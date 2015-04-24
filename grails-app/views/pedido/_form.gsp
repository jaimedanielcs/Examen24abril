<%@ page import="examen24abril.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cabezera', 'error')} required">
    <label for="cabezera">
        <g:message code="pedido.cabezera.label" default="Cabezera"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="cabezera" name="cabezera.id" from="${examen24abril.Cabezera.list()}" optionKey="id" required=""
              value="${pedidoInstance?.cabezera?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cuerpo', 'error')} required">
    <label for="cuerpo">
        <g:message code="pedido.cuerpo.label" default="Cuerpo"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="cuerpo" name="cuerpo.id" from="${examen24abril.Cuerpo.list()}" optionKey="id" required=""
              value="${pedidoInstance?.cuerpo?.id}" class="many-to-one"/>

</div>

