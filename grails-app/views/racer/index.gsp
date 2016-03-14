
<%@ page import="org.bmbw.racedept.Racer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'racer.label', default: 'Racer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-racer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-racer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'racer.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'racer.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'racer.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="birthDate" title="${message(code: 'racer.birthDate.label', default: 'Birth Date')}" />
					
						<g:sortableColumn property="comment" title="${message(code: 'racer.comment.label', default: 'Comment')}" />
					
						<g:sortableColumn property="bibNumber" title="${message(code: 'racer.bibNumber.label', default: 'Bib Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${racerInstanceList}" status="i" var="racerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${racerInstance.id}">${fieldValue(bean: racerInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: racerInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: racerInstance, field: "gender")}</td>
					
						<td><g:formatDate date="${racerInstance.birthDate}" /></td>
					
						<td>${fieldValue(bean: racerInstance, field: "comment")}</td>
					
						<td>${fieldValue(bean: racerInstance, field: "bibNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${racerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
