
<%@ page import="org.bmbw.racedept.Clinic" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clinic.label', default: 'Clinic')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-clinic" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-clinic" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list clinic">
			
				<g:if test="${clinicInstance?.clinicName}">
				<li class="fieldcontain">
					<span id="clinicName-label" class="property-label"><g:message code="clinic.clinicName.label" default="Clinic Name" /></span>
					
						<span class="property-value" aria-labelledby="clinicName-label"><g:fieldValue bean="${clinicInstance}" field="clinicName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="clinic.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:fieldValue bean="${clinicInstance}" field="day"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicInstance?.clinicGroups}">
				<li class="fieldcontain">
					<span id="clinicGroups-label" class="property-label"><g:message code="clinic.clinicGroups.label" default="Clinic Groups" /></span>
					
						<g:each in="${clinicInstance.clinicGroups}" var="c">
						<span class="property-value" aria-labelledby="clinicGroups-label"><g:link controller="clinicGroup" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clinicInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clinicInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
