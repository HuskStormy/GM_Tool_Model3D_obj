///activar el 3D
gpu_set_zwriteenable(true);			//habililtar el z buffer
gpu_set_ztestenable(true);			//habilitra la depht del buffer
layer_force_draw_depth(true, 0);	//forsar que todas los layer sean 0


//activar la view del room
//view_enabled = true;		//Enable the use of views
//view_set_visible(0, true);	//Make this view visible

//camera
camera = camera_create();
//FOV
projMat = matrix_build_projection_perspective_fov(-60, -view_get_wport(0)/view_get_hport(0), 32.0, 32000.0);

camera_set_proj_mat(camera, projMat);	//asigniar la proyeccion del fov y camra

//iniciar la camara
view_set_camera(0, camera);