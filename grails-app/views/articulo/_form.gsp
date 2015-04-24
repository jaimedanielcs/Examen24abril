<%@ page import="examen24abril.Articulo" %>



<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'fabricas', 'error')} ">
    <label for="fabricas">
        <g:message code="articulo.fabricas.label" default="Fabricas"/>

    </label>
    <g:select name="fabricas" from="${examen24abril.Fabrica.list()}" multiple="multiple" optionKey="id" size="5"
              value="${articuloInstance?.fabricas*.id}" class="many-to-many"/>

</div>

