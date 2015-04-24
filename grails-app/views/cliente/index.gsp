<%@ page import="examen24abril.Cliente" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-cliente" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="numCliente"
                              title="${message(code: 'cliente.numCliente.label', default: 'Num Cliente')}"/>

            <g:sortableColumn property="limiteCredito"
                              title="${message(code: 'cliente.limiteCredito.label', default: 'Limite Credito')}"/>

            <g:sortableColumn property="descuento"
                              title="${message(code: 'cliente.descuento.label', default: 'Descuento')}"/>

            <g:sortableColumn property="saldo" title="${message(code: 'cliente.saldo.label', default: 'Saldo')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "numCliente")}</g:link></td>

                <td>${fieldValue(bean: clienteInstance, field: "limiteCredito")}</td>

                <td>${fieldValue(bean: clienteInstance, field: "descuento")}</td>

                <td>${fieldValue(bean: clienteInstance, field: "saldo")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${clienteInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
