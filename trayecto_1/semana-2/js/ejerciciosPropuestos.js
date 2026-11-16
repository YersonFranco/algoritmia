function esAnioBisiesto(anio) {
  return (anio % 4 === 0 && anio % 100 !== 0) || anio % 400 === 0;
}

function puedeEntrarAlEvento(edad, tieneBoleta, acompaniadoPorAdultoConBoleta) {
  const esAdulto = edad >= 18;
  return (esAdulto && tieneBoleta) || (!esAdulto && acompaniadoPorAdultoConBoleta);
}

function calcularTarifaGimnasio(tarifa, esEstudiante, edad) {
  let descuento = 0;

  if (esEstudiante) {
    descuento = 50;
  }

  if (edad > 60 && descuento < 40) {
    descuento = 40;
  }

  return tarifa - tarifa * descuento / 100;
}

function validarContrasena(contrasena) {
  const tieneLongitudMinima = contrasena.length >= 8;
  const tieneUnNumero = /[0-9]/.test(contrasena);
  const contienePalabraProhibida = contrasena.toLowerCase().includes("password");

  return tieneLongitudMinima && tieneUnNumero && !contienePalabraProhibida;
}

function estadoInventario(stock) {
  if (stock < 0) {
    return "Error";
  }

  if (stock === 0) {
    return "Agotado";
  }

  if (stock <= 10) {
    return "Bajo";
  }

  return "Disponible";
}

console.log("Año bisiesto 1900:", esAnioBisiesto(1900));
console.log("Año bisiesto 2000:", esAnioBisiesto(2000));
console.log("Entrada adulto con boleta:", puedeEntrarAlEvento(20, true, false));
console.log("Entrada menor acompañado:", puedeEntrarAlEvento(16, false, true));
console.log("Gimnasio para estudiante:", calcularTarifaGimnasio(100000, true, 25));
console.log("Gimnasio para persona de 61 años:", calcularTarifaGimnasio(100000, false, 61));
console.log("Contraseña válida:", validarContrasena("clave1234"));
console.log("Contraseña prohibida:", validarContrasena("password123"));
console.log("Inventario 0:", estadoInventario(0));
console.log("Inventario 11:", estadoInventario(11));
