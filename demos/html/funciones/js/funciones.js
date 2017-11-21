// Una función es un bloque de código que se ejecuta una tarea en particular.
// Así podemos reutilizar el código.
// Además hay que invocarla para que se ejecute
// Una función se puede invocar desde el código, con un evento o automáticamente.

// Sintaxis de una función
// function nombre_funcion (<parámetros separados por comas>) {...}
function saludo (){
    alert("Hola!");
}
//los paréntesis invocan a la función
var resultado_saludo = saludo();
alert (resultado_saludo);
// Sin paréntesis se puede guardar la función en una variable
var resultado_saludo2 = saludo;
alert(resultado_saludo2);
//Función con parámetros

function producto (a, b){
    return a * b;
}

var resultado_producto = producto (3, 4);
alert (resultado_producto);
