// Generated by view binder compiler. Do not edit!
package com.example.instameal.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.example.instameal.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class DialogRenameImageBinding implements ViewBinding {
  @NonNull
  private final LinearLayout rootView;

  @NonNull
  public final EditText editDirectory;

  @NonNull
  public final EditText editImageName;

  private DialogRenameImageBinding(@NonNull LinearLayout rootView, @NonNull EditText editDirectory,
      @NonNull EditText editImageName) {
    this.rootView = rootView;
    this.editDirectory = editDirectory;
    this.editImageName = editImageName;
  }

  @Override
  @NonNull
  public LinearLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static DialogRenameImageBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static DialogRenameImageBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.dialog_rename_image, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static DialogRenameImageBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.editDirectory;
      EditText editDirectory = ViewBindings.findChildViewById(rootView, id);
      if (editDirectory == null) {
        break missingId;
      }

      id = R.id.editImageName;
      EditText editImageName = ViewBindings.findChildViewById(rootView, id);
      if (editImageName == null) {
        break missingId;
      }

      return new DialogRenameImageBinding((LinearLayout) rootView, editDirectory, editImageName);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}