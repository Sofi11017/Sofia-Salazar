Algoritmo Envio_del_paquete
    Definir distancia, kg, precio, precio_final Como Real
    Escribir "Dime el peso del producto (kg):"
    Leer kg
    Escribir "Dime la distancia (km):"
    Leer distancia
    Si distancia >= 1 Y distancia <= 10 Entonces
        precio <- 500 * kg
    SiNo
        Si distancia >= 11 Y distancia <= 50 Entonces
            precio <- 800 * kg
        SiNo
            precio <- 1000 * kg
        FinSi
    FinSi
    Si kg > 20 Entonces
        precio_final <- precio * 1.2
        Escribir "Tendras que pagar 20% mas por exeso de peso"
    SiNo
        precio_final <- precio
    FinSi
    Escribir "El costo total del envío es: $", precio_final
FinAlgoritmo