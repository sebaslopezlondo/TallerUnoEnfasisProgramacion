function obtenerValor(){
    //Variable tamaño de arreglos
    var tamañoArreglos = document.getElementById("tamaño").value;
    //Defino arreglos
    var miArreglito =[];
    var tuArreglito =[];
    
    for (let i = 0; i < tamañoArreglos; i++) {
        //Genero numeros aleatorios para cada arreglo
        var aleatorioMi= Math.floor(Math.random() * 100);
        var aleatorioTu= Math.floor(Math.random() * 100);

        //Asigno numero aleatorio a cada posicion del arreglo
        miArreglito[i] = aleatorioMi;
        tuArreglito[i] = aleatorioTu;

        //Sumo cada posicion
        var resultadoSuma = miArreglito[i] + tuArreglito[i];

        //Muestro en consola
        console.log(miArreglito[i]);
        console.log(tuArreglito[i]);
        //console.log(resultadoSuma);

        console.log(miArreglito[i] +' + '+ tuArreglito[i] + ' = ' + resultadoSuma);
        
        /*document.getElementById('tabla').innerHTML = '<table><tr><td>Primer valor</td><td>Segundo valor</td><td>Resultado</td></tr>'+
                                                    '<tr><td>'+miArreglito[i]+'</td><td>'+tuArreglito[i]+'</td><td>'+resultadoSuma+
                                                    '</td></tr></table>';*/
        document.getElementById('tabla').innerHTML = "En consola se encuentra la suma de los arreglos <br> Click derecho - Inspeccionar - Console";                                        

    }
}