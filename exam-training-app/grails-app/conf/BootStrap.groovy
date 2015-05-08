import exam.training.app.Question
import exam.training.app.Answer
import exam.training.app.Role
import exam.training.app.User
import exam.training.app.UserRole;


class BootStrap {

	def init = { servletContext ->
		//set temporary admin
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)

		def testUser = new User(username: 'admin', password: 'admin')
		testUser.save(flush: true)

		UserRole.create testUser, adminRole, true

		assert User.count() == 1
		assert Role.count() == 1
		assert UserRole.count() == 1

		//set few questions

		def question1answer1 = new Answer(content: "Answer 1", isValid: true)
		def question1answer2 = new Answer(content: "Answer 2", isValid: true)
		def question1answer3 = new Answer(content: "Answer 3", isValid: false)
		def question1answer4 = new Answer(content: "Answer 4", isValid: false)
		def question1 = new Question(content: "Question 1? (Answer 1, Answer 2)")
		.addToAnswers(question1answer1)
		.addToAnswers(question1answer2)
		.addToAnswers(question1answer3)
		.addToAnswers(question1answer4)
		.save(failOnError: true)

		def question2answer1 = new Answer(content: "Answer 1", isValid: false)
		def question2answer2 = new Answer(content: "Answer 2", isValid: true)
		def question2answer3 = new Answer(content: "Answer 3", isValid: false)
		def question2answer4 = new Answer(content: "Answer 4", isValid: false)
		def question2 = new Question(content: "Question 2? (Answer 2)")
		.addToAnswers(question2answer1)
		.addToAnswers(question2answer2)
		.addToAnswers(question2answer3)
		.addToAnswers(question2answer4)
		.save(failOnError: true)

		def question3answer1 = new Answer(content: "Answer 1", isValid: true)
		def question3answer2 = new Answer(content: "Answer 2", isValid: true)
		def question3answer3 = new Answer(content: "Answer 3", isValid: true)
		def question3answer4 = new Answer(content: "Answer 4", isValid: true)
		def question3 = new Question(content: "Question 3? (Answer 1, Answer 2, Answer 3, Answer 4)")
		.addToAnswers(question3answer1)
		.addToAnswers(question3answer2)
		.addToAnswers(question3answer3)
		.addToAnswers(question3answer4)
		.save(failOnError: true)

		def question4answer1 = new Answer(content: "Answer 1", isValid: false)
		def question4answer2 = new Answer(content: "Answer 2", isValid: true)
		def question4answer3 = new Answer(content: "Answer 3", isValid: true)
		def question4answer4 = new Answer(content: "Answer 4", isValid: true)
		def question4 = new Question(content: "Question 4? (Answer 2, Answer 3, Answer 4)")
		.addToAnswers(question4answer1)
		.addToAnswers(question4answer2)
		.addToAnswers(question4answer3)
		.addToAnswers(question4answer4)
		.save(failOnError: true)



		def question5answer1 = new Answer(content: "Answer 1", isValid: true)
		def question5answer2 = new Answer(content: "Answer 2", isValid: false)
		def question5answer3 = new Answer(content: "Answer 3", isValid: false)
		def question5answer4 = new Answer(content: "Answer 4", isValid: true)
		def question5 = new Question(content: "Question 5? (Answer 1, Answer 4)")
		.addToAnswers(question5answer1)
		.addToAnswers(question5answer2)
		.addToAnswers(question5answer3)
		.addToAnswers(question5answer4)
		.save(failOnError: true)

		def question6answer1 = new Answer(content: "Answer 1", isValid: false)
		def question6answer2 = new Answer(content: "Answer 2", isValid: false)
		def question6answer3 = new Answer(content: "Answer 3", isValid: false)
		def question6answer4 = new Answer(content: "Answer 4", isValid: true)
		def question6 = new Question(content: "Question 6? (Answer 4)")
		.addToAnswers(question6answer1)
		.addToAnswers(question6answer2)
		.addToAnswers(question6answer3)
		.addToAnswers(question6answer4)
		.save(failOnError: true)

		def question7answer1 = new Answer(content: "Answer 1", isValid: true)
		def question7answer2 = new Answer(content: "Answer 2", isValid: false)
		def question7answer3 = new Answer(content: "Answer 3", isValid: false)
		def question7answer4 = new Answer(content: "Answer 4", isValid: false)
		def question7 = new Question(content: "Question 7? (Answer 1)")
		.addToAnswers(question7answer1)
		.addToAnswers(question7answer2)
		.addToAnswers(question7answer3)
		.addToAnswers(question7answer4)
		.save(failOnError: true)
		
		def question8answer1 = new Answer(content: "Answer 1", isValid: true)
		def question8answer2 = new Answer(content: "Answer 2", isValid: false)
		def question8answer3 = new Answer(content: "Answer 3", isValid: false)
		def question8answer4 = new Answer(content: "Answer 4", isValid: true)
		def question8answer5 = new Answer(content: "Answer 5", isValid: false)
		def question8answer6 = new Answer(content: "Answer 6", isValid: false)
		def question8answer7 = new Answer(content: "Answer 7", isValid: true)
		def question8 = new Question(content: "Question 8? (Answer 1, Answer 4, Answer 7)")
		.addToAnswers(question8answer1)
		.addToAnswers(question8answer2)
		.addToAnswers(question8answer3)
		.addToAnswers(question8answer4)
		.addToAnswers(question8answer5)
		.addToAnswers(question8answer6)
		.addToAnswers(question8answer7)
		.save(failOnError: true)

		def question9answer1 = new Answer(content: "Answer 1", isValid: true)
		def question9answer2 = new Answer(content: "Answer 2", isValid: false)
		def question9answer3 = new Answer(content: "Answer 3", isValid: false)
		def question9answer4 = new Answer(content: "Answer 4", isValid: true)
		def question9answer5 = new Answer(content: "Answer 5", isValid: false)
		def question9answer6 = new Answer(content: "Answer 6", isValid: false)
		def question9answer7 = new Answer(content: "Answer 7", isValid: true)
		def question9 = new Question(content: "Question 9? (Answer 1, Answer 4, Answer 7)")
		.addToAnswers(question9answer1)
		.addToAnswers(question9answer2)
		.addToAnswers(question9answer3)
		.addToAnswers(question9answer4)
		.addToAnswers(question9answer5)
		.addToAnswers(question9answer6)
		.addToAnswers(question9answer7)
		.save(failOnError: true)
		
		def question10answer1 = new Answer(content: "Answer 1", isValid: false)
		def question10answer2 = new Answer(content: "Answer 2", isValid: true)
		def question10 = new Question(content: "Question 10? (Answer 2)")
		.addToAnswers(question10answer1)
		.addToAnswers(question10answer2)
		.save(failOnError: true)
	}
	def destroy = {
	}
}
