import exam.training.app.Question
import exam.training.app.Answer
import exam.training.app.Role
import exam.training.app.User
import exam.training.app.UserRole;


class BootStrap {

	def init = { servletContext ->
		if (User.count() == 0 && Role.count() == 0 && UserRole.count() == 0) {
			//set temporary admin
			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
	
			def testUser = new User(username: 'admin', password: 'admin')
			testUser.save(flush: true)
	
			UserRole.create testUser, adminRole, true
	
			assert User.count() == 1
			assert Role.count() == 1
			assert UserRole.count() == 1
		}

		//set few questions, ponizej przyklad dodawania recznie pytania z odpowiedziami

		/*def question1answer1 = new Answer(content: "Answer 1", isValid: true)
		def question1answer2 = new Answer(content: "Answer 2", isValid: true)
		def question1answer3 = new Answer(content: "Answer 3", isValid: false)
		def question1answer4 = new Answer(content: "Answer 4", isValid: false)
		def question1 = new Question(content: "Question 1? (Answer 1, Answer 2)")
		.addToAnswers(question1answer1)
		.addToAnswers(question1answer2)
		.addToAnswers(question1answer3)
		.addToAnswers(question1answer4)
		.save(failOnError: true)*/
	}
	def destroy = {
	}
}
