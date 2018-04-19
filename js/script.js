function validarNumero(codigo,mensaje) {
    const validos = /^[0-9]+$/;
    if (codigo.value.match(validos)) {
        return true;
    }
    else {
        alert("Código de Postulante Inválido");
        return false;
    }
}