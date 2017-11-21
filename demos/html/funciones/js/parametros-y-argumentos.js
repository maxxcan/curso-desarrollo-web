
/* Parámetros y argumentos
   Función puede tener 0 o más parámetros.
   Parámetros son los nombres que aparecen en la definición de una función
   Argumentos son los valores que pasamos y recibe una función*/

/* Reglas de los parámetros:
   -No se especifica su tipo
   -No se verifican los tipos de los argumentos
   -No se comprueba el número de los argumentos recibidos.*/

//Parámetros por defecto
//Cuando llamamos a una función con menos argumentos de los declarados.

function suma (a,b){
    if (b === undefined)
        b = 0;
    return a + b;
}

var resultado = suma(4);
alert(resultado);
//Parámetros por exceso
//Cuando llamamos a una función con más parámetros.

function valores (){
  alert ("El número de argumentos es "+arguments.length);
    for (var i=0; i < arguments.length; i++){
        alert ("Argumento "+i+"="+arguments[i]);
    }
}
valores (4, 5, 6, 6, 6, 3, 5);
