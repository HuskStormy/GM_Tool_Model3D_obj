function getVertexModel(file){
	var line;
	file = file_text_open_read(working_directory + file);
	var str;
	if (file != -1) {
	    var contenido = "";
	    while (!file_text_eof(file)) {contenido += file_text_readln(file);}
		str = string_split(contenido,"\n")
	    file_text_close(file);
		var mynum = 0;
		for (var i = 0; i < array_length(str); ++i) {
		    if (string_pos("v ", str[i]) == 1){
				line[mynum] = string_copy(str[i],0,string_length(str[i])-1);
				line[mynum] = string_replace(line[mynum], "v ", "")
				line[mynum] = string_split(line[mynum], " ");
				mynum++
			}
		}
		for (var i = 0; i < array_length(line); ++i) {
			for (var j = 0; j < array_length(line[i]); ++j) {
				line[i][j]= real(line[i][j]);
			}
		}
		return line;
	}
	else {
		return pointer_null;
	    show_message("Error al abrir el archivo.");
	}
}

function getFaceModel(file){
	var line
	file = file_text_open_read(working_directory + file);
	var str;
	if (file != -1) {
	    var contenido = "";
	    while (!file_text_eof(file)) {contenido += file_text_readln(file);}
		str = string_split(contenido,"\n")
	    file_text_close(file);
		var mynum = 0;
		for (var i = 0; i < array_length(str); ++i) {
		    if (string_pos("f ", str[i]) == 1){
				line[mynum] = string_copy(str[i],0,string_length(str[i]));
				line[mynum] = string_replace(line[mynum], "f ", "")
				line[mynum] = string_split(line[mynum], " ");
				mynum++
			}
		}

		for (var i = 0; i < array_length(line); ++i) {
			for (var j = 0; j < array_length(line[i]); ++j) {
				line[i][j] = string_split(line[i][j], "/");
			}
		}
		for (var i = 0; i < array_length(line); ++i) {
			for (var j = 0; j < array_length(line[i]); ++j) {
				for (var o = 0; o < array_length(line[i][j]); ++o) {
					line[i][j][o] = real(line[i][j][o]);
				}
			}
		}
		
		return line;
	}
	else {
		return pointer_null;
	    show_message("Error al abrir el archivo.");
	}
}