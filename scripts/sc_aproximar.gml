///sc_aproximar(valor_actual, valor_objetivo, cantidad_aproximar)
/*
    Desc:
         Esta función se utiliza para aproximar un valor a otro objetivo sin pasarse segun la cantidad indicada
         
    Return: real
*/

var valor_actual = argument0,
    valor_objetivo = argument1, 
    cantidad_aproximar = argument2; // Valor con el que se va aproximando cada step

// Aproximar el valor pero no pasarse
if (valor_actual < valor_objetivo) {

    return min(valor_actual + cantidad_aproximar, valor_objetivo);
     
} else {

    return max(valor_actual - cantidad_aproximar, valor_objetivo);
    
}
