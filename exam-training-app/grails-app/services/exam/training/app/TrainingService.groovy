package exam.training.app

import grails.transaction.Transactional

@Transactional
class TrainingService {

    def serviceMethod() {

    }
	
	def randomQuestion(){
		// TODO better random algorithm
		//def randomQuestion = Question.get(1)
		
		def randomQuestion = Question.executeQuery('from Question order by rand()', [max: 1])
		//println randomQuestion
		randomQuestion[0]
	}
}
