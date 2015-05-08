package exam.training.app



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured;
import grails.transaction.Transactional


@Secured(['permitAll'])
@Transactional(readOnly = true)
class QuestionController {

	private static final okcontents = [
		'image/png',
		'image/jpeg',
		'image/gif'
	]
	static allowedMethods = [save: "POST", delete: "DELETE", image: "GET"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Question.list(params), model:[questionInstanceCount: Question.count()]
	}

	def show(Question questionInstance) {
		respond questionInstance
	}

	def create() {
		respond new Question(params)
	}

	//responding image
	def image() {
		def questionImage = Question.get(params.id)
		//println questionImage
		
		if (questionImage) {
			
		}
		response.contentType = questionImage.image
		response.contentLength = questionImage.image.size()
		OutputStream out = response.outputStream
		out.write(questionImage.image)
		out.close()
	}

	@Transactional
	def save(Question questionInstance) {
		if (questionInstance == null) {
			notFound()
			return
		}

		if (questionInstance.hasErrors()) {
			respond questionInstance.errors, view:'create'
			return
		}

		// Implementation based on "Simple avatar upload" tutorial
		// Get the image file from the multi-part request
		def file = request.getFile('image')

		// List of OK mime-types --> format validation
		if (!file.empty && !okcontents.contains(file.getContentType())) {
			flash.message = "Image must be one of: ${okcontents}"
			respond questionInstance.errors, view:'create'
			return
		}
		if (!file.empty) {
			// attach the image and mime type
			questionInstance.image = file.bytes
			questionInstance.imageType = file.contentType
			// println("Image uploaded: $questionInstance.imageType")
		}

		//save call
		questionInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'question.label', default: 'Question'),
					questionInstance.id
				])
				redirect questionInstance
			}
			'*' { respond questionInstance, [status: CREATED] }
		}
	}

	def edit(Question questionInstance) {
		respond questionInstance
	}

	@Transactional
	def update(Question questionInstance) {
		if (questionInstance == null) {
			notFound()
			return
		}

		if (questionInstance.hasErrors()) {
			respond questionInstance.errors, view:'edit'
			return
		}


		//println questionInstance.image

		// Implementation based on "Simple avatar upload" tutorial
		// Get the image file from the multi-part request
		//println questionInstance.image

		if (!questionInstance.image) {
			//println "niema"
			def originalInstance = Question.get(questionInstance.id)
			println originalInstance.id
			println originalInstance.image
			println originalInstance.imageType
			//questionInstance.image[] = originalInstance.image[]
			//questionInstance.imageType = originalInstance.imageType
		}
//
//		def file = request.getFile('image')
		println questionInstance.image

		
		
		
		
//		
//		// List of OK mime-types -> format validation
//		if (!okcontents.contains(file.getContentType())) {
//			flash.message = "Image must be one of: ${okcontents}"
//			respond questionInstance.errors, view:'edit'
//			//render(view:'create', model:[user:user])
//			return
//		}
//
//		
//		
//		
//		
//		
//		
//		// Save the image and mime type
//		questionInstance.image = file.bytes
//		questionInstance.imageType = file.contentType
//		println("Image uploaded: $questionInstance.imageType")


		questionInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Question.label', default: 'Question'),
					questionInstance.id
				])
				redirect questionInstance
			}
			'*'{ respond questionInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Question questionInstance) {

		if (questionInstance == null) {
			notFound()
			return
		}

		questionInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Question.label', default: 'Question'),
					questionInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'question.label', default: 'Question'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
