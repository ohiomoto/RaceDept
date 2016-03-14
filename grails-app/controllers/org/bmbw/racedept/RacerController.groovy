package org.bmbw.racedept



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RacerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Racer.list(params), model:[racerInstanceCount: Racer.count()]
    }

    def show(Racer racerInstance) {
        respond racerInstance
    }

    def create() {
        respond new Racer(params)
    }

    @Transactional
    def save(Racer racerInstance) {
        if (racerInstance == null) {
            notFound()
            return
        }

        if (racerInstance.hasErrors()) {
            respond racerInstance.errors, view:'create'
            return
        }

        racerInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'racerInstance.label', default: 'Racer'), racerInstance.id])
                redirect racerInstance
            }
            '*' { respond racerInstance, [status: CREATED] }
        }
    }

    def edit(Racer racerInstance) {
        respond racerInstance
    }

    @Transactional
    def update(Racer racerInstance) {
        if (racerInstance == null) {
            notFound()
            return
        }

        if (racerInstance.hasErrors()) {
            respond racerInstance.errors, view:'edit'
            return
        }

        racerInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Racer.label', default: 'Racer'), racerInstance.id])
                redirect racerInstance
            }
            '*'{ respond racerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Racer racerInstance) {

        if (racerInstance == null) {
            notFound()
            return
        }

        racerInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Racer.label', default: 'Racer'), racerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'racerInstance.label', default: 'Racer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
