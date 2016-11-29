<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'divisa.label', default: 'Divisa')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-divisa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul style="color:white;">
                <li style="color:white;"><a class="home" href="${createLink(uri: 'http://127.0.0.1:51093/app/index.html')}"><g:message code="default.home.label"/></a></li>
                <li style="color:white;"><g:link class="list" action="index">Ir a lista</g:link></li>
                <li style="color:white;"><g:link class="create" action="create">Crear Nuevo Crimen</g:link></li>
            </ul>
        </div>
        <div id="show-divisa" class="content scaffold-show" role="main">
            <h1>Mostrar Crimen</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="divisa" />
            <g:form resource="${this.divisa}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.divisa}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
