package exam.training.app

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['ROLE_ADMIN'])
class AnswerController {

static scaffold = true //def index() { }
}
