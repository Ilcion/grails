package exam.training.app

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['ROLE_ADMIN'])
class QuestionController {

	static scaffold = true //def index() { }


//	def mediaFile = {
//		def question = Question.get( params.id )
//		byte[] mediaFile = Question.mediaFile
//		response.outputStream << mediaFile
//	}
	
}
