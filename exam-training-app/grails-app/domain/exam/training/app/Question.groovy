package exam.training.app

class Question {

	
	
	String content
	List answers
	static hasMany = [answers: Answer]

	byte[] image
	String imageType


	//	byte[] mediaFile
	//String imageType

	static constraints = {
		
		
		
		//mediaFile minSize: 10, maxSize: 1024 * 1024 * 2 /* 2MB max size */
		content blank: false, size: 2..1000, unique: true
		image nullable: true, maxSize: 1024 * 1024 * 2 /* 2MB max size */
		imageType nullable:true
	}
	String toString(){
		content
	}
}
