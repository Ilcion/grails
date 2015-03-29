package exam.training.app

class Answer {

	String content
	boolean isValid
	
	
	
	static belongsTo = [question: Question]
	
	static constraints = {
		content blank: false, size: 1..500
		 //isValid defaultValue: true
		}
	
	String toString(){
		content
	}
}
