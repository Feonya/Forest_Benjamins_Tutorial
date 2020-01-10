target_ = obj_player;
width_  = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
half_width_  = width_ / 2;
half_height_ = height_ / 2;

viewport_scale_camera_ = view_wport[0] / width_;
camera_scale_viewport_ = 1 / viewport_scale_camera_;