//Begin defining a format
vertex_format_begin();

vertex_format_add_position_3d();//Add 3D position info
vertex_format_add_color();//Add color info
vertex_format_add_textcoord();//Texture coordinate info

//End building the format, and assign the format to the variable "format"
format = vertex_format_end();


lval = 0