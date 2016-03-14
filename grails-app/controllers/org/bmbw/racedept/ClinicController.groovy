package org.bmbw.racedept



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClinicController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Clinic.list(params), model:[clinicInstanceCount: Clinic.count()]
    }

    def show(Clinic clinicInstance) {
        respond clinicInstance
    }

    def create() {
        respond new Clinic(params)
    }

    @Transactional
    def save(Clinic clinicInstance) {
        if (clinicInstance == null) {
            notFound()
            return
        }

        if (clinicInstance.hasErrors()) {
            respond clinicInstance.errors, view:'create'
            return
        }

        clinicInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clinicInstance.label', default: 'Clinic'), clinicInstance.id])
                redirect clinicInstance
            }
            '*' { respond clinicInstance, [status: CREATED] }
        }
    }

    def edit(Clinic clinicInstance) {
        respond clinicInstance
    }

    @Transactional
    def update(Clinic clinicInstance) {
        if (clinicInstance == null) {
            notFound()
            return
        }

        if (clinicInstance.hasErrors()) {
            respond clinicInstance.errors, view:'edit'
            return
        }

        clinicInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Clinic.label', default: 'Clinic'), clinicInstance.id])
                redirect clinicInstance
            }
            '*'{ respond clinicInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Clinic clinicInstance) {

        if (clinicInstance == null) {
            notFound()
            return
        }

        clinicInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Clinic.label', default: 'Clinic'), clinicInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinicInstance.label', default: 'Clinic'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
