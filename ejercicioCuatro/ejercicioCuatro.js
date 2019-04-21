function pentagono() {
    //Tomo el ancho que ingresa el usuario
    var ancho= document.getElementById('veces').value; 
    console.log(ancho);
    //Defino los * para cada fila
    var fila1 = "*"; 
    var fila2 = "* *";
    if (ancho==1) {
        var fila3 = "* * * *"; 
    } else {
        var fila3 = "* * *";     
    } 
    var fila4 = "* *"; 
    var saltico = "<br>";
    //Titulo antes del pentagono
    document.write('<p style="text-align:center;">Este es el pentagono con el ancho de ' +ancho+ ' que usted selecciono </p><br><br>');  
    //Centro los asteriscos
    document.writeln('<p style="text-align:center;">');
    //Imprimo cada fila de los asteriscos
    for(var i=1;i<=ancho;i++){ 
        document.writeln(fila1);  
    }
    document.writeln(saltico); 
    for(var i=1;i<=ancho;i++){ 
        document.writeln(fila2);   
    }
    document.writeln(saltico); 
    for(var i=1;i<=ancho;i++){ 
        document.writeln(fila3);   
    } 
    document.writeln(saltico); 
    for(var i=1;i<=ancho;i++){ 
        document.writeln(fila4);   
    }       
}
