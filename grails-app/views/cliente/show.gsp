<%@ page import="examen24abril.Cliente" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-cliente" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list cliente">

        <g:if test="${clienteInstance?.numCliente}">
            <li class="fieldcontain">
                <span id="numCliente-label" class="property-label"><g:message code="cliente.numCliente.label"
                                                                              default="Num Cliente"/></span>

                <span class="property-value" aria-labelledby="numCliente-label"><g:fieldValue bean="${clienteInstance}"
                                                                                              field="numCliente"/></span>

            </li>
        </g:if>

        <g:if test="${clienteInstance?.limiteCredito}">
            <li class="fieldcontain">
                <span id="limiteCredito-label" class="property-label"><g:message code="cliente.limiteCredito.label"
                                                                                 default="Limite Credito"/></span>

                <span class="property-value" aria-labelledby="limiteCredito-label"><g:fieldValue
                        bean="${clienteInstance}" field="limiteCredito"/></span>

            </li>
        </g:if>

        <g:if test="${clienteInstance?.direccionEnvio}">
            <li class="fieldcontain">
                <span id="direccionEnvio-label" class="property-label"><g:message code="cliente.direccionEnvio.label"
                                                                                  default="Direccion Envio"/></span>

                <g:each in="${clienteInstance.direccionEnvio}" var="d">
                    <span class="property-value" aria-labelledby="direccionEnvio-label"><g:link
                            controller="direccionEnvio" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${clienteInstance?.descuento}">
            <li class="fieldcontain">
                <span id="descuento-label" class="property-label"><g:message code="cliente.descuento.label"
                                                                             default="Descuento"/></span>

                <span class="property-value" aria-labelledby="descuento-label"><g:fieldValue bean="${clienteInstance}"
                                                                                             field="descuento"/></span>

            </li>
        </g:if>

        <g:if test="${clienteInstance?.saldo}">
            <li class="fieldcontain">
                <span id="saldo-label" class="property-label"><g:message code="cliente.saldo.label"
                                                                         default="Saldo"/></span>

                <span class="property-value" aria-labelledby="saldo-label"><g:fieldValue bean="${clienteInstance}"
                                                                                         field="saldo"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: clienteInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${clienteInstance}"><g:message code="default.button.edit.label"
                                                                                        default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
