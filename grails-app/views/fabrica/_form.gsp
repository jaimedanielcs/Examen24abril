<%@ page import="examen24abril.Fabrica" %>



<div class="fieldcontain ${hasErrors(bean: fabricaInstance, field: 'telefonoContacto', 'error')} ">
    <label for="telefonoContacto">
        <g:message code="fabrica.telefonoContacto.label" default="Telefono Contacto"/>

    </label>
    <g:textField name="telefonoContacto" value="${fabricaInstance?.telefonoContacto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fabricaInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
        <g:message code="fabrica.nombre.label" default="Nombre"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" required="" value="${fabricaInstance?.nombre}"/>

</div>

