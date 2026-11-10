function resumenNotas(listaNotas) {
    if (!Array.isArray(listaNotas) || listaNotas.length === 0) {
        return "No hay notas para analizar";
    }

    for (const valor of listaNotas) {
        if (typeof valor !== "number" || Number.isNaN(valor) || valor < 0 || valor > 5) {
            return "Todas las notas deben ser números entre 0 y 5";
        }
    }

    let notaMaxima = listaNotas[0];
    let notaMinima = listaNotas[0];
    let cantAprobadas = 0;
    let cantReprobadas = 0;
    let acumulado = 0;

    for (const nota of listaNotas) {
        if (nota > notaMaxima) {
            notaMaxima = nota;
        }
        if (nota < notaMinima) {
            notaMinima = nota;
        }
        if (nota >= 3.0) {
            cantAprobadas++;
        } else {
            cantReprobadas++;
        }
        acumulado += nota;
    }

    const promedio = acumulado / listaNotas.length;

    return `La nota mayor es: ${notaMaxima}, la nota menor es: ${notaMinima}, la cantidad de aprobados es: ${cantAprobadas}, la cantidad de reprobados es: ${cantReprobadas} y el promedio de las notas es: ${promedio.toFixed(2)}`;
}

console.log(resumenNotas([4.5, 2.8, 3.9, 2.5, 5.0]));
