function calcularSubtotal(items) {
  let subtotal = 0;

  for (const item of items) {
    subtotal += item.precio * item.cantidad;
  }

  return subtotal;
}

function aplicarCupon(subtotal, codigo) {
  if (codigo === "RIWI10") {
    return subtotal * 0.9;
  }

  return subtotal;
}

function calcularImpuesto(valor) {
  return valor * 0.19;
}

function calcularEnvio(subtotal) {
  if (subtotal > 150000) {
    return 0;
  }

  return 8000;
}

function calcularTotal(items, codigoCupon) {
  const subtotal = calcularSubtotal(items);
  const totalConDescuento = aplicarCupon(subtotal, codigoCupon);
  const impuesto = calcularImpuesto(totalConDescuento);
  const envio = calcularEnvio(subtotal);

  return totalConDescuento + impuesto + envio;
}

const carritoConCupon = [
  { precio: 50000, cantidad: 2 },
  { precio: 30000, cantidad: 1 }
];

const carritoConEnvioGratis = [
  { precio: 50000, cantidad: 2 },
  { precio: 60000, cantidad: 1 }
];

console.log("Total con cupón RIWI10:", calcularTotal(carritoConCupon, "RIWI10"));
console.log("Total sin cupón y con envío gratis:", calcularTotal(carritoConEnvioGratis, ""));
