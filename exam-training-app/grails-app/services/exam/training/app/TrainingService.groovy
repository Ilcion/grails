package exam.training.app


import grails.transaction.Transactional

@Transactional
class TrainingService {
	def randomQuestion(){
		def randomQuestion = Question.executeQuery('from Question order by rand()', [max: 1])
		randomQuestion[0]
	}
}
