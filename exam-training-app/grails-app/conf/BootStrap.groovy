import exam.training.app.Question
import exam.training.app.Answer
import exam.training.app.Role
import exam.training.app.User
import exam.training.app.UserRole;


class BootStrap {

    def init = { servletContext ->
		//set temporary admin
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		
		def testUser = new User(username: 'a', password: 'a')
		testUser.save(flush: true)
		
		UserRole.create testUser, adminRole, true
		
		assert User.count() == 1
		assert Role.count() == 2
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
								.save()
								
		def question2answer1 = new Answer(content: "Answer 1", isValid: false)
		def question2answer2 = new Answer(content: "Answer 2", isValid: true)
		def question2answer3 = new Answer(content: "Answer 3", isValid: false)
		def question2answer4 = new Answer(content: "Answer 4", isValid: false)
		def question2 = new Question(content: "Question 2? (Answer 2)")
								.addToAnswers(question2answer1)
								.addToAnswers(question2answer2)
								.addToAnswers(question2answer3)
								.addToAnswers(question2answer4)
								.save()
	
		def question3answer1 = new Answer(content: "Answer 1", isValid: true)
		def question3answer2 = new Answer(content: "Answer 2", isValid: true)
		def question3answer3 = new Answer(content: "Answer 3", isValid: true)
		def question3answer4 = new Answer(content: "Answer 4", isValid: true)
		def question3 = new Question(content: "Question 3? (Answer 1, Answer 2, Answer 3, Answer 4)")
								.addToAnswers(question3answer1)
								.addToAnswers(question3answer2)
								.addToAnswers(question3answer3)
								.addToAnswers(question3answer4)
								.save()
								
		def question4answer1 = new Answer(content: "Answer 1", isValid: false)
		def question4answer2 = new Answer(content: "Answer 2", isValid: true)
		def question4answer3 = new Answer(content: "Answer 3", isValid: true)
		def question4answer4 = new Answer(content: "Answer 4", isValid: true)					
		def question4 = new Question(content: "Question 4? (Answer 2, Answer 3, Answer 4)")
								.addToAnswers(question4answer1)
								.addToAnswers(question4answer2)
								.addToAnswers(question4answer3)
								.addToAnswers(question4answer4)
								.save()

								
								
		def question5answer1 = new Answer(content: "Answer 1", isValid: true)
		def question5answer2 = new Answer(content: "Answer 2", isValid: false)
		def question5answer3 = new Answer(content: "Answer 3", isValid: false)
		def question5answer4 = new Answer(content: "Answer 4", isValid: true)
		def question5 = new Question(content: "Question 5? (Answer 1, Answer 4)")
								.addToAnswers(question5answer1)
								.addToAnswers(question5answer2)
								.addToAnswers(question5answer3)
								.addToAnswers(question5answer4)
								.save()
		
		
		
    }
    def destroy = {
    }
}
