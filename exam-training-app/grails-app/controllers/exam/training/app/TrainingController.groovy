package exam.training.app

import org.springframework.context.annotation.Scope;

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['permitAll'])
class TrainingController {
	def trainingService
	def index(){
	}
	def start() {
		def question = trainingService.randomQuestion()
		session.question = question
		[question:question]
	}
	def summary(params){
		def userAnswers = params.userAnswers
		[userAnswers:userAnswers,  question:session.question]
	}
}
