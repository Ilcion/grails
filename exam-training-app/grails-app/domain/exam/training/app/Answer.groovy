package exam.training.app

class Answer {

	String content
	boolean isValid
	
	static belongsTo = [question: Question]
	
	static constraints = {
		content blank: false, size: 1..500
	}
	String toString(){
		content
	}
}
