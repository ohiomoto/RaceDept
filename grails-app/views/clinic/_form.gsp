<%@ page import="org.bmbw.racedept.Clinic" %>



<div class="fieldcontain ${hasErrors(bean: clinicInstance, field: 'clinicName', 'error')} required">
	<label for="clinicName">
		<g:message code="clinic.clinicName.label" default="Clinic Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clinicName" required="" value="${clinicInstance?.clinicName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicInstance, field: 'day', 'error')} ">
	<label for="day">
		<g:message code="clinic.day.label" default="Day" />
		
	</label>
	<g:select name="day" from="${clinicInstance.constraints.day.inList}" value="${clinicInstance?.day}" valueMessagePrefix="clinic.day" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicInstance, field: 'clinicGroups', 'error')} ">
	<label for="clinicGroups">
		<g:message code="clinic.clinicGroups.label" default="Clinic Groups" />
		
	</label>
	<g:select name="clinicGroups" from="${org.bmbw.racedept.ClinicGroup.list()}" multiple="multiple" optionKey="id" size="5" value="${clinicInstance?.clinicGroups*.id}" class="many-to-many"/>
</div>

