//Create the vertex buffer. Another function, vetex_create_buffer_ext can be used to create the buffer with its size predefined and fixed.
//With the standard vertex_create_buffer, the buffer will just grow automatically as needed.
vb_plane = vertex_create_buffer();

//Begin building the buffer using the format defined previously
vertex_begin(vb_plane, format);

//Add the six vertices needed to draw a simple square plane.

//The first triangle
vertex_position_3d(vb_plane, -size, -size, 0);
vertex_color(vb_plane, c_white, 1);
vertex_texcoord(vb_plane, 0, 0);

vertex_position_3d(vb_plane, size, -size, 0);
vertex_color(vb_plane, c_white, 1);
vertex_texcoord(vb_plane, 1, 0);

vertex_position_3d(vb_plane, -size, size, 0);
vertex_color(vb_plane, c_white, 1);
vertex_texcoord(vb_plane, 0, 1);

//Finish building the buffer.
vertex_end(vb_plane);




if (keyboard_check_pressed(ord("K"))){
	
file = file_text_open_read(working_directory + "models/MEOOL.obj");
if (file != -1) {
    var contenido = "";
    while (!file_text_eof(file)) {
        contenido += file_text_readln(file);
    }
    file_text_close(file);
    
    // Ahora puedes mostrar el contenido en la pantalla
    show_debug_message(contenido)
}
else {
    show_message("Error al abrir el archivo.");
}




var lineas = string_split(contenido, "\n");
var lineas_v = "";

for (var i = 0; i < array_length(lineas); i++) {
    if (string_pos("v ", lineas[i]) == 1) {
        lineas_v += "line< " + lineas[i] + ">";
    }
}

show_debug_message(lineas_v);
show_debug_message("*******************************************************");
show_debug_message(string_replace(lineas_v, " \n", "|"))
show_debug_message("*******************************************************");
lineas_v = string_split(lineas_v, "v ");

for (var i = 0; i < array_length(lineas_v); ++i) {
	var lin = (string_split(lineas_v[i], " "));
	show_debug_message(lin);
}





//// Limpiar la lista de puntos
//for (var i = 0; i < ds_list_size(puntos); i++) {
//    ds_list_destroy(puntos[| i]);
//}
//ds_list_destroy(puntos);


}

//if (string_count("v ", obj_string) > 0){
			
//					// first remove unnessesary lettering
//					// replace evert space with a "|" which will dicate the end of a value. This is done to separate the values in one string.
//					obj_string = string_replace(obj_string, "v ", "");
//					obj_string = string_replace_all(obj_string," ","|");
//					obj_string = string_replace(obj_string,obj_string,obj_string+"|");


