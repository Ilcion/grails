package exam.training.app

import grails.transaction.Transactional

@Transactional
class PrepereQuestionService {

    def serviceMethod() {

    }
	
	def randomQuestion(){
		// TODO better random algorithm
		def randomQuestion = Question.get(1)
		randomQuestion
	}
}
