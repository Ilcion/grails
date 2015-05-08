package exam.training.app

import grails.plugin.springsecurity.annotation.Secured;

//@Secured(['ROLE_ADMIN'])
@Secured(['permitAll'])
class AnswerController {

static scaffold = true //def index() { }
}
