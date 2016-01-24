function validaCampos() {
	if (document.datos.ApellidoPaterno.value == ""){
	alert ('Ingrese Su Apellido Paterno');
	document.datos.ApellidoPaterno.focus();
	return false;
	}
	if (document.datos.ApellidoMaterno.value == ""){
	alert ('Ingrese Su Apellido Materno');
	document.datos.ApellidoMaterno.focus();
	return false;
	}
	if (document.datos.Nombre.value == ""){
	alert ('Ingrese su Nombre');
	document.datos.Nombre.focus();
	return false;
	}
	if (document.datos.Edad.value == ""){
	alert ('ingrese su Edad');
	document.datos.Edad.focus();
	return false;
	}
	if (document.datos.Pais.value == ""){
	alert ('ingrese su pais');
	document.datos.Pais.focus();
	return false;
	}
	if (document.datos.CiudadMunicipio.value == ""){
	alert ('Ingrese su Ciudad o Municipio');
	document.datos.CiudadMunicipio.focus();
	return false;
	}
	if (document.datos.CodigoPostal.value == ""){
	alert ('Ingrese su Codigo Postal');
	document.datos.CodigoPostal.focus();
	return false;
	}
	if (document.datos.Calle o Avenida.value == ""){
	alert ('Ingrese su Calle o Avenida');
	document.datos.CalleAvenida.focus();
	return false;
	}
	if (document.datos.Telefono.value == ""){
	alert ('Ingrese su Telefono');
	document.datos.Telefono.focus();
	return false;
	}
	if (document.datos.Email.value == ""){
	alert ('Ingrese su E-mail');
	document.datos.Email.focus();
	return false;
	}
	if (document.datos.Sexo.value == ""){
	alert ('Ingrese su Sexo');
	document.datos.Sexo.focus();
	return false;
	}
	if (document.datos.id_EmpresaAuditora.value == "0"){
	alert ('Seleccione la Empresa Auditora');
	document.datos.id_EmpresaAuditora.focus();
	return false;
	}
		document.datos.submit();
}
window.onload=function(){
 		document.getElementById('boton').onclick=validaCampos;
 	}