
<%@ page import="org.bmbw.racedept.ClinicGroup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clinicGroup.label', default: 'ClinicGroup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-clinicGroup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-clinicGroup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list clinicGroup">
			
				<g:if test="${clinicGroupInstance?.groupName}">
				<li class="fieldcontain">
					<span id="groupName-label" class="property-label"><g:message code="clinicGroup.groupName.label" default="Group Name" /></span>
					
						<span class="property-value" aria-labelledby="groupName-label"><g:fieldValue bean="${clinicGroupInstance}" field="groupName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicGroupInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="clinicGroup.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:fieldValue bean="${clinicGroupInstance}" field="day"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicGroupInstance?.coaches}">
				<li class="fieldcontain">
					<span id="coaches-label" class="property-label"><g:message code="clinicGroup.coaches.label" default="Coaches" /></span>
					
						<g:each in="${clinicGroupInstance.coaches}" var="c">
						<span class="property-value" aria-labelledby="coaches-label"><g:link controller="coach" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clinicGroupInstance?.racers}">
				<li class="fieldcontain">
					<span id="racers-label" class="property-label"><g:message code="clinicGroup.racers.label" default="Racers" /></span>
					
						<g:each in="${clinicGroupInstance.racers}" var="r">
						<span class="property-value" aria-labelledby="racers-label"><g:link controller="racer" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clinicGroupInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clinicGroupInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
