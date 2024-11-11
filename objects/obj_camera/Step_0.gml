if (keyboard_check(vk_shift		)) z +=10;
if (keyboard_check(vk_control	)) z -=10;


var dis = 320;
//Set up camera location
var zz = -z;
var xx = x + lengthdir_x(dis,-90);//Rotation is negative now to match with the old gif and spin clockwise
var yy = y + lengthdir_y(dis,-90);

//Build a matrix that looks from the camera location above, to the room center. The up vector points to -z
var m_lookat = matrix_build_lookat(xx,yy,zz, x,y,0, 0,0,1);

//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
camera_set_view_mat(view_camera[0], m_lookat);