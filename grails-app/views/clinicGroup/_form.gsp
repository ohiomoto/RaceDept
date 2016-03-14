<%@ page import="org.bmbw.racedept.ClinicGroup" %>



<div class="fieldcontain ${hasErrors(bean: clinicGroupInstance, field: 'groupName', 'error')} required">
	<label for="groupName">
		<g:message code="clinicGroup.groupName.label" default="Group Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groupName" required="" value="${clinicGroupInstance?.groupName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicGroupInstance, field: 'day', 'error')} ">
	<label for="day">
		<g:message code="clinicGroup.day.label" default="Day" />
		
	</label>
	<g:select name="day" from="${clinicGroupInstance.constraints.day.inList}" value="${clinicGroupInstance?.day}" valueMessagePrefix="clinicGroup.day" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicGroupInstance, field: 'coaches', 'error')} ">
	<label for="coaches">
		<g:message code="clinicGroup.coaches.label" default="Coaches" />
		
	</label>
	<g:select name="coaches" from="${org.bmbw.racedept.Coach.list()}" multiple="multiple" optionKey="id" size="5" value="${clinicGroupInstance?.coaches*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicGroupInstance, field: 'racers', 'error')} ">
	<label for="racers">
		<g:message code="clinicGroup.racers.label" default="Racers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clinicGroupInstance?.racers?}" var="r">
    <li><g:link controller="racer" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="racer" action="create" params="['clinicGroup.id': clinicGroupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'racer.label', default: 'Racer')])}</g:link>
</li>
</ul>

</div>

