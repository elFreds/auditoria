function validaCampos() {
	if (document.datos.NombreComercial.value == ""){
	alert ('Ingrese Su Nombre Comercial');
	document.datos.NombreComercial.focus();
	return false;
	}
	if (document.datos.NombreFiscal.value == ""){
	alert ('Ingrese Su Nombre Fiscal');
	document.datos.NombreFiscal.focus();
	return false;
	}
	if (document.datos.CalleAvenida.value == ""){
	alert ('Ingrese su Calle o Avenida');
	document.datos.CalleAvenida.focus();
	return false;
	}
	if (document.datos.CiudadMunicipio.value == ""){
	alert ('Ingrese su Ciudad o municipio');
	document.datos.CiudadMunicipio.focus();
	return false;
	}
	if (document.datos.CodigoPostal.value == ""){
	alert ('Ingrese su Codigo Postal');
	document.datos.CodigoPostal.focus();
	return false;
	}
	if (document.datos.Pais.value == ""){
	alert ('ingrese su pais');
	document.datos.Pais.focus();
	return false;
	}
	if (document.datos.Telefono.value == ""){
	alert ('Ingrese su Telefono');
	document.datos.Telefono.focus();
	return false;
	}
	if (document.datos.Giro.value == ""){
	alert ('SIngrese su Giro');
	document.datos.Giro.focus();
	return false;
	}
	if (document.datos.Email.value == ""){
	alert ('Ingrese su E-mail');
	document.datos.Email.focus();
	return false;
	}
	if (document.datos.Web.value == ""){
	alert ('Ingrese su Web');
	document.datos.Web.focus();
	return false;
	}
	if (document.datos.id_audi.value == "0"){
	alert ('Seleccione el Auditor');
	document.datos.id_audi.focus();
	return false;
	}
		document.datos.submit();
}
window.onload=function(){
 		document.getElementById('boton').onclick=validaCampos;
 	}