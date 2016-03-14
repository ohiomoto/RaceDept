<%@ page import="org.bmbw.racedept.Racer" %>



<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="racer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${racerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="racer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${racerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="racer.gender.label" default="Gender" />
		
	</label>
	<g:select name="gender" from="${racerInstance.constraints.gender.inList}" value="${racerInstance?.gender}" valueMessagePrefix="racer.gender" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'birthDate', 'error')} ">
	<label for="birthDate">
		<g:message code="racer.birthDate.label" default="Birth Date" />
		
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${racerInstance?.birthDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="racer.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${racerInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'bibNumber', 'error')} ">
	<label for="bibNumber">
		<g:message code="racer.bibNumber.label" default="Bib Number" />
		
	</label>
	<g:field name="bibNumber" type="number" value="${racerInstance.bibNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="racer.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${racerInstance.constraints.type.inList}" value="${racerInstance?.type}" valueMessagePrefix="racer.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'skillLevel', 'error')} ">
	<label for="skillLevel">
		<g:message code="racer.skillLevel.label" default="Skill Level" />
		
	</label>
	<g:select name="skillLevel" from="${racerInstance.constraints.skillLevel.inList}" value="${racerInstance?.skillLevel}" valueMessagePrefix="racer.skillLevel" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'family', 'error')} ">
	<label for="family">
		<g:message code="racer.family.label" default="Family" />
		
	</label>
	<g:select id="family" name="family.id" from="${org.bmbw.racedept.Family.list()}" optionKey="id" value="${racerInstance?.family?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'clinic', 'error')} ">
	<label for="clinic">
		<g:message code="racer.clinic.label" default="Clinic" />
		
	</label>
	<g:select id="clinic" name="clinic.id" from="${org.bmbw.racedept.Clinic.list()}" optionKey="id" value="${racerInstance?.clinic?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: racerInstance, field: 'clinicGroup', 'error')} ">
	<label for="clinicGroup">
		<g:message code="racer.clinicGroup.label" default="Clinic Group" />
		
	</label>
	<g:select id="clinicGroup" name="clinicGroup.id" from="${org.bmbw.racedept.ClinicGroup.list()}" optionKey="id" value="${racerInstance?.clinicGroup?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

