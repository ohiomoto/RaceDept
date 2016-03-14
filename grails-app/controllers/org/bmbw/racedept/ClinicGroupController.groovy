package org.bmbw.racedept



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClinicGroupController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ClinicGroup.list(params), model:[clinicGroupInstanceCount: ClinicGroup.count()]
    }

    def show(ClinicGroup clinicGroupInstance) {
        respond clinicGroupInstance
    }

    def create() {
        respond new ClinicGroup(params)
    }

    @Transactional
    def save(ClinicGroup clinicGroupInstance) {
        if (clinicGroupInstance == null) {
            notFound()
            return
        }

        if (clinicGroupInstance.hasErrors()) {
            respond clinicGroupInstance.errors, view:'create'
            return
        }

        clinicGroupInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clinicGroupInstance.label', default: 'ClinicGroup'), clinicGroupInstance.id])
                redirect clinicGroupInstance
            }
            '*' { respond clinicGroupInstance, [status: CREATED] }
        }
    }

    def edit(ClinicGroup clinicGroupInstance) {
        respond clinicGroupInstance
    }

    @Transactional
    def update(ClinicGroup clinicGroupInstance) {
        if (clinicGroupInstance == null) {
            notFound()
            return
        }

        if (clinicGroupInstance.hasErrors()) {
            respond clinicGroupInstance.errors, view:'edit'
            return
        }

        clinicGroupInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ClinicGroup.label', default: 'ClinicGroup'), clinicGroupInstance.id])
                redirect clinicGroupInstance
            }
            '*'{ respond clinicGroupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ClinicGroup clinicGroupInstance) {

        if (clinicGroupInstance == null) {
            notFound()
            return
        }

        clinicGroupInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ClinicGroup.label', default: 'ClinicGroup'), clinicGroupInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinicGroupInstance.label', default: 'ClinicGroup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
