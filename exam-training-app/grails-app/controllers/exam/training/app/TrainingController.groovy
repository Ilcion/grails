package exam.training.app

import org.springframework.context.annotation.Scope;

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['permitAll'])
class TrainingController {
	def prepereQuestionService
	
	def index() {
		def question = prepereQuestionService.randomQuestion()
		[question:question]
	}
	
	def summary(params){
		
		
		def userAnswers = params.userAnswers
		def validAnswers = params.validAnswers
		println validAnswers
		println userAnswers
		
		[validAnswers:validAnswers, userAnswers:userAnswers, question:params.question]
		
	}
}
