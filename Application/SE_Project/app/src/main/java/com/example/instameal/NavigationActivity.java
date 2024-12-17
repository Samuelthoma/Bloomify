package com.example.instameal;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import com.example.instameal.databinding.ActivityNavigationBinding;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

public class NavigationActivity extends AppCompatActivity {

    private ActivityNavigationBinding binding;
    private static final int CAMERA_PERMISSION_CODE = 101;
    private static final int REQUEST_CODE_CAMERA = 99;

    private static final String API_URL = "https://api.plant.id/v2/identify";
    private static final String API_KEY = "dVCUTu4hqrJT2t3NwrlO6JXIsSH8zg3ALNl1SYgUxWyfPGBkDP";

    private Uri imageUri;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityNavigationBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());
        replaceFragment(new FragmentHome());

        // Set bottom navigation behavior
        binding.bottomNavigationView.setSelectedItemId(R.id.home);
        binding.bottomNavigationView.setElevation(0);

        binding.bottomNavigationView.setOnItemSelectedListener(item -> {
            switch (item.getItemId()) {
                case R.id.home:
                    replaceFragment(new FragmentHome());
                    break;
                case R.id.scan:
                    checkPermissions();
                    break;
                case R.id.history:
                    replaceFragment(new FragmentBouquet());
                    break;
            }
            return true;
        });
    }

    private void replaceFragment(Fragment fragment) {
        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        fragmentTransaction.replace(R.id.frameLayout, fragment);
        fragmentTransaction.commit();
    }

    private void checkPermissions() {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED ||
                ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this,
                    new String[]{Manifest.permission.CAMERA, Manifest.permission.WRITE_EXTERNAL_STORAGE},
                    CAMERA_PERMISSION_CODE);
        } else {
            openCamera();
        }
    }

    private void openCamera() {
        Intent cameraIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        if (cameraIntent.resolveActivity(getPackageManager()) != null) {
            imageUri = getImageUri();
            cameraIntent.putExtra(MediaStore.EXTRA_OUTPUT, imageUri);
            startActivityForResult(cameraIntent, REQUEST_CODE_CAMERA);
        } else {
            Toast.makeText(this, "Camera is not available", Toast.LENGTH_SHORT).show();
        }
    }


    private Uri getImageUri() {
        // Pastikan direktori sudah dibuat
        File photoFile = new File(getExternalFilesDir(null), "captured_image.jpg");
        Log.d("NavigationActivity", "Photo file path: " + photoFile.getAbsolutePath());
        if (!photoFile.exists()) {
            try {
                if (photoFile.createNewFile()) {
                    Log.d("NavigationActivity", "Image file created successfully");
                }
            } catch (IOException e) {
                Log.e("NavigationActivity", "Error creating image file", e);
            }
        }
        return FileProvider.getUriForFile(this, "com.example.instameal.fileprovider", photoFile);
    }



    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_CODE_CAMERA && resultCode == RESULT_OK) {
            if (imageUri != null) {
                // Log URI untuk memastikan gambar diambil dengan benar
                Log.d("NavigationActivity", "Captured Image URI: " + imageUri.toString());

                // Mendapatkan Bitmap dari URI
                Bitmap bitmap = decodeBitmap(imageUri);
                if (bitmap != null) {
                    uploadImageToPlantId(bitmap);
                } else {
                    Toast.makeText(this, "Invalid image. Please try again.", Toast.LENGTH_SHORT).show();
                }
            } else {
                Toast.makeText(this, "Image URI is null. Please try again.", Toast.LENGTH_SHORT).show();
            }
        } else {
            Toast.makeText(this, "Image capture was canceled.", Toast.LENGTH_SHORT).show();
        }
    }


    private Bitmap decodeBitmap(Uri imageUri) {
        try {
            // Use BitmapFactory to decode and scale the image for efficiency
            return MediaStore.Images.Media.getBitmap(getContentResolver(), imageUri);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private void uploadImageToPlantId(Bitmap bitmap) {
        RequestQueue requestQueue = Volley.newRequestQueue(this);

        // Convert Bitmap to Base64 string
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);
        byte[] imageBytes = baos.toByteArray();
        String base64Image = Base64.encodeToString(imageBytes, Base64.DEFAULT);

        // Prepare request body
        JSONObject requestBody = new JSONObject();
        try {
            requestBody.put("api_key", API_KEY);
            JSONArray images = new JSONArray();
            images.put(base64Image);
            requestBody.put("images", images);
            requestBody.put("organs", new JSONArray().put("leaf"));
        } catch (JSONException e) {
            e.printStackTrace();
            Toast.makeText(this, "Failed to prepare data for API.", Toast.LENGTH_SHORT).show();
            return;
        }

        // Create and send the API request
        JsonObjectRequest request = new JsonObjectRequest(Request.Method.POST, API_URL, requestBody,
                response -> {
                    try {
                        if (response.has("suggestions") && response.getJSONArray("suggestions").length() > 0) {
                            JSONArray suggestions = response.getJSONArray("suggestions");
                            JSONObject topSuggestion = suggestions.getJSONObject(0);

                            JSONArray commonNamesArray = topSuggestion.optJSONArray("common_names");
                            String flowerName = commonNamesArray != null && commonNamesArray.length() > 0
                                    ? commonNamesArray.join(", ").replace("\"", "")
                                    : topSuggestion.optString("plant_name", "Unknown flower");

                            JSONObject descriptionObject = topSuggestion.optJSONObject("description");
                            String description = descriptionObject != null
                                    ? descriptionObject.optString("value", "No description available.")
                                    : "No description available.";

                            showFlowerInfo(flowerName, description, bitmap);
                        } else {
                            Toast.makeText(this, "No flowers recognized.", Toast.LENGTH_SHORT).show();
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        Toast.makeText(this, "Failed to parse API response.", Toast.LENGTH_SHORT).show();
                    }
                },
                error -> {
                    Toast.makeText(this, "Failed to connect to the server: " + error.getLocalizedMessage(), Toast.LENGTH_SHORT).show();
                    error.printStackTrace();
                }) {
            @Override
            public String getBodyContentType() {
                return "application/json; charset=utf-8";
            }
        };

        requestQueue.add(request);
    }

    private void showFlowerInfo(String flowerName, String description, Bitmap image) {
        // Adjust image size based on screen width
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int width = displayMetrics.widthPixels;

        // Calculate image height based on aspect ratio
        float aspectRatio = (float) image.getHeight() / image.getWidth();
        int height = (int) (width * aspectRatio);

        // Create ImageView and set size
        ImageView flowerImageView = new ImageView(this);
        flowerImageView.setImageBitmap(image);
        flowerImageView.setLayoutParams(new LinearLayout.LayoutParams(width, height));
        flowerImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);

        // Create LinearLayout for scrolling if needed
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.addView(flowerImageView);

        // Show AlertDialog with flower information
        new AlertDialog.Builder(this)
                .setTitle("Flower Identified")
                .setMessage("Flower Name: " + flowerName + "\nDescription: " + description)
                .setView(layout)
                .setPositiveButton("OK", null)
                .show();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == CAMERA_PERMISSION_CODE) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                openCamera();
            } else {
                Toast.makeText(this, "Camera and storage permissions are required", Toast.LENGTH_SHORT).show();
                finish(); // Close the app if permissions are not granted
            }
        }
    }

}
