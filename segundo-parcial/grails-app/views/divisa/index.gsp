<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'divisa.label', default: 'Divisa')}" />
        <title>Crimenes</title>
    </head>
    <body>
        <a href="#list-divisa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: 'http://127.0.0.1:51093/app/index.html')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create">Nuevo Crimen</g:link></li>
            </ul>
        </div>
        
        <div id="list-divisa" class="content container scaffold-list" role="main">
            <h1>Lista de Crimenes Reportados</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${divisaList}" class="table-responsive"/>
        </div>
    </body>
</html>