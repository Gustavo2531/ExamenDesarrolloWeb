<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'divisa.label', default: 'Divisa')}" />
        <title>Crimenes</title>
    </head>
    <body>
        <a href="#edit-divisa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: 'http://127.0.0.1:51093/app/index.html')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index">Regresar a lista</g:link></li>
                <li><g:link class="create" action="create">Reportar Nuevo Crimen</g:link></li>
            </ul>
        </div>
        <div id="edit-divisa" class="content scaffold-edit" role="main">
            <h1>Editar</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.divisa}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.divisa}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.divisa}" method="PUT">
                <fieldset class="form">
                    <f:all bean="divisa"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
