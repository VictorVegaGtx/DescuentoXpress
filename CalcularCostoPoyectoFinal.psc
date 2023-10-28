Algoritmo CalcularCostoPoyectoFinal
    // Entrada de datos
    Escribir "Ingrese el precio original del producto:"
    Leer precioOriginal
    Escribir "Ingrese el porcentaje de descuento del cupón:"
    Leer descuentoCupon
    Escribir "Ingrese el porcentaje de IVA:"
    Leer IVA
    Escribir "Ingrese la cantidad de productos a comprar:"
    Leer cantidad
    Escribir "Ingrese el peso del paquete en kg:"
    Leer pesoPaquete
    Escribir "Ingrese el costo fijo de envío:"
    Leer costoFijoEnvio
	
    // Cálculos
    precioConDescuento = precioOriginal * (1 - descuentoCupon / 100)
    precioConIVA = precioConDescuento * (1 + IVA / 100)
    descuentoCantidad = 0.05 // 5% de descuento por cantidad si se compran más de un artículo
    si cantidad > 1 entonces
        precioConDescuentoCantidad = precioConIVA * (1 - descuentoCantidad)
    sino
        precioConDescuentoCantidad = precioConIVA
    fin si
    costoEnvio = costoFijoEnvio + (2 * pesoPaquete)
    costoFinal = (precioConDescuentoCantidad * cantidad) + costoEnvio
	
    // Salida de datos
    Escribir "El costo final del producto es: $" + NumeroACadena (costoFinal)
    Escribir "Desglose:"
    Escribir "Precio con descuento: $" + NumeroACadena (precioConDescuento)
    Escribir "Precio con IVA: $" + NumeroACadena (precioConIVA)
    Escribir "Precio con descuento por cantidad: $" + NumeroACadena (precioConDescuentoCantidad)
    Escribir "Costo de envío: $" + NumeroACadena (costoEnvio)
FinAlgoritmo
