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
		//println question
		[question:question]
	}
	
	def summary(params){
		
		def question = Question.get(params.question)
		def userAnswers = params.userAnswers
		//println question.answers.id
		//println userAnswers
		[userAnswers:userAnswers,  question:question]
		
	}
}