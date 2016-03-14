
<%@ page import="org.bmbw.racedept.Racer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'racer.label', default: 'Racer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-racer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-racer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list racer">
			
				<g:if test="${racerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="racer.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${racerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="racer.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${racerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="racer.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${racerInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="racer.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${racerInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="racer.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${racerInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.bibNumber}">
				<li class="fieldcontain">
					<span id="bibNumber-label" class="property-label"><g:message code="racer.bibNumber.label" default="Bib Number" /></span>
					
						<span class="property-value" aria-labelledby="bibNumber-label"><g:fieldValue bean="${racerInstance}" field="bibNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="racer.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${racerInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.skillLevel}">
				<li class="fieldcontain">
					<span id="skillLevel-label" class="property-label"><g:message code="racer.skillLevel.label" default="Skill Level" /></span>
					
						<span class="property-value" aria-labelledby="skillLevel-label"><g:fieldValue bean="${racerInstance}" field="skillLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.family}">
				<li class="fieldcontain">
					<span id="family-label" class="property-label"><g:message code="racer.family.label" default="Family" /></span>
					
						<span class="property-value" aria-labelledby="family-label"><g:link controller="family" action="show" id="${racerInstance?.family?.id}">${racerInstance?.family?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.clinic}">
				<li class="fieldcontain">
					<span id="clinic-label" class="property-label"><g:message code="racer.clinic.label" default="Clinic" /></span>
					
						<span class="property-value" aria-labelledby="clinic-label"><g:link controller="clinic" action="show" id="${racerInstance?.clinic?.id}">${racerInstance?.clinic?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${racerInstance?.clinicGroup}">
				<li class="fieldcontain">
					<span id="clinicGroup-label" class="property-label"><g:message code="racer.clinicGroup.label" default="Clinic Group" /></span>
					
						<span class="property-value" aria-labelledby="clinicGroup-label"><g:link controller="clinicGroup" action="show" id="${racerInstance?.clinicGroup?.id}">${racerInstance?.clinicGroup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:racerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${racerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
