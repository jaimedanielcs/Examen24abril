<%@ page import="examen24abril.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'numCliente', 'error')} required">
    <label for="numCliente">
        <g:message code="cliente.numCliente.label" default="Num Cliente"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="numCliente" type="number" value="${clienteInstance.numCliente}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'limiteCredito', 'error')} required">
    <label for="limiteCredito">
        <g:message code="cliente.limiteCredito.label" default="Limite Credito"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="limiteCredito" type="number" value="${clienteInstance.limiteCredito}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'direccionEnvio', 'error')} ">
    <label for="direccionEnvio">
        <g:message code="cliente.direccionEnvio.label" default="Direccion Envio"/>

    </label>
    <g:select name="direccionEnvio" from="${examen24abril.DireccionEnvio.list()}" multiple="multiple" optionKey="id"
              size="5" value="${clienteInstance?.direccionEnvio*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'descuento', 'error')} required">
    <label for="descuento">
        <g:message code="cliente.descuento.label" default="Descuento"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="descuento" type="number" value="${clienteInstance.descuento}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'saldo', 'error')} required">
    <label for="saldo">
        <g:message code="cliente.saldo.label" default="Saldo"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="saldo" type="number" value="${clienteInstance.saldo}" required=""/>

</div>

