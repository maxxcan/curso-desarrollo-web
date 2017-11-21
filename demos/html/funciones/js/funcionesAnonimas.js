
// Sintaxis de una función anónima

var producto = function (a, b){ return a * b;};
var resultado = producto(3,6);
alert (resultado);
//El constructor function()
var miFuncion = new Function ("a", "b", "return a*b;");
var resultado2 = miFuncion(5,7);
alert(resultado2);

//funciones anónimas autoinvocadas
(function () { alert ("Hola!");}());

// las funciones anónimas se usan mucho con eventos.
