package exam.training.app

import org.springframework.context.annotation.Scope;

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['permitAll'])
class TrainingController {
	def trainingService
	def start() {
		if (session.question) {
			session.question = null
		}
		session.question = trainingService.randomQuestion()

		session.question = Question.get(1)
		[question: session.question]
	}
	def summary(params){
		def userAnswers = params.userAnswers
		[userAnswers:userAnswers,  question:session.question]
	}
}
