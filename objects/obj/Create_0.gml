vertex_format_begin();
	vertex_format_add_position_3d();//Add 3D position info
	vertex_format_add_color();//Add color info
	vertex_format_add_textcoord();//Texture coordinate info
//End building the format, and assign the format to the variable "format"
format = vertex_format_end();


vect = getVertexModel("models/g.obj")
face = getFaceModel("models/g.obj")

show_debug_message(face)
show_debug_message(vect)


vb_plane = vertex_create_buffer();
vertex_begin(vb_plane, format);

//Add the six vertices needed to draw a simple square plane.
z = 0;

var scal = 50
for (var i = 0; i < array_length(face); ++i) {
for (var j = 0; j < array_length(face[i]); ++j) {
	var _vx = face[i][j][0]-1;
	
	var _x=vect[_vx][0]*scal;
	var _y=vect[_vx][2]*scal;
	var _z=vect[_vx][1]*scal;
	vertex_position_3d(vb_plane, x+(_x), y+(_y), z+(_z));
	vertex_color(vb_plane, c_white, 1);
	vertex_texcoord(vb_plane, 0, 0);

}
}

//Finish building the buffer.
vertex_end(vb_plane);