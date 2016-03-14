<%@ page import="org.bmbw.racedept.Coach" %>



<div class="fieldcontain ${hasErrors(bean: coachInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="coach.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${coachInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coachInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="coach.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${coachInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coachInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="coach.gender.label" default="Gender" />
		
	</label>
	<g:select name="gender" from="${coachInstance.constraints.gender.inList}" value="${coachInstance?.gender}" valueMessagePrefix="coach.gender" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coachInstance, field: 'birthDate', 'error')} ">
	<label for="birthDate">
		<g:message code="coach.birthDate.label" default="Birth Date" />
		
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${coachInstance?.birthDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: coachInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="coach.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${coachInstance?.comment}"/>
</div>

