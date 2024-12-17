// Generated by view binder compiler. Do not edit!
package com.example.instameal.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.example.instameal.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class FragmentRecipeDetailsBinding implements ViewBinding {
  @NonNull
  private final ScrollView rootView;

  @NonNull
  public final TextView bouquetDescription;

  @NonNull
  public final TextView bouquetFlowers;

  @NonNull
  public final ImageView bouquetImage;

  @NonNull
  public final TextView bouquetTitle;

  @NonNull
  public final TextView people;

  private FragmentRecipeDetailsBinding(@NonNull ScrollView rootView,
      @NonNull TextView bouquetDescription, @NonNull TextView bouquetFlowers,
      @NonNull ImageView bouquetImage, @NonNull TextView bouquetTitle, @NonNull TextView people) {
    this.rootView = rootView;
    this.bouquetDescription = bouquetDescription;
    this.bouquetFlowers = bouquetFlowers;
    this.bouquetImage = bouquetImage;
    this.bouquetTitle = bouquetTitle;
    this.people = people;
  }

  @Override
  @NonNull
  public ScrollView getRoot() {
    return rootView;
  }

  @NonNull
  public static FragmentRecipeDetailsBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static FragmentRecipeDetailsBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.fragment_recipe_details, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static FragmentRecipeDetailsBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.bouquet_description;
      TextView bouquetDescription = ViewBindings.findChildViewById(rootView, id);
      if (bouquetDescription == null) {
        break missingId;
      }

      id = R.id.bouquet_flowers;
      TextView bouquetFlowers = ViewBindings.findChildViewById(rootView, id);
      if (bouquetFlowers == null) {
        break missingId;
      }

      id = R.id.bouquet_image;
      ImageView bouquetImage = ViewBindings.findChildViewById(rootView, id);
      if (bouquetImage == null) {
        break missingId;
      }

      id = R.id.bouquet_title;
      TextView bouquetTitle = ViewBindings.findChildViewById(rootView, id);
      if (bouquetTitle == null) {
        break missingId;
      }

      id = R.id.people;
      TextView people = ViewBindings.findChildViewById(rootView, id);
      if (people == null) {
        break missingId;
      }

      return new FragmentRecipeDetailsBinding((ScrollView) rootView, bouquetDescription,
          bouquetFlowers, bouquetImage, bouquetTitle, people);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}
