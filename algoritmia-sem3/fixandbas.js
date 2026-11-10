function evaluarMultiplos(numero) {
    if (!Number.isInteger(numero)) {
        return "Se requiere un número entero";
    }

    if (numero % 3 === 0 && numero % 5 === 0) {
        return "fixandbass";
    } else if (numero % 3 === 0) {
        return "fix";
    } else if (numero % 5 === 0) {
        return "bass";
    }

    return numero;
}

function esPalindromo(texto) {
    if (typeof texto !== "string") {
        return false;
    }

    const limpio = texto
        .toLowerCase()
        .normalize("NFD")
        .replace(/[\u0300-\u036f]/g, "")
        .replace(/[^a-z0-9]/g, "");

    if (limpio.length === 0) {
        return false;
    }

    let invertido = "";
    for (let pos = limpio.length - 1; pos >= 0; pos--) {
        invertido += limpio[pos];
    }

    return invertido === limpio;
}

for (let n = 1; n <= 15; n++) {
    console.log(n, evaluarMultiplos(n));
}

console.log(esPalindromo("ana l ana"));
