<%@ page import="org.bmbw.racedept.Family" %>



<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'familyName', 'error')} required">
	<label for="familyName">
		<g:message code="family.familyName.label" default="Family Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="familyName" required="" value="${familyInstance?.familyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'racers', 'error')} ">
	<label for="racers">
		<g:message code="family.racers.label" default="Racers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${familyInstance?.racers?}" var="r">
    <li><g:link controller="racer" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="racer" action="create" params="['family.id': familyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'racer.label', default: 'Racer')])}</g:link>
</li>
</ul>

</div>

