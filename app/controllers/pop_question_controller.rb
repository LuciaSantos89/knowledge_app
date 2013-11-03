class PopQuestionController < ApplicationController
	def create
		@pop_question = PopQuestion.new( params.require(:pop_question).permit(:question, :answer) )
		if @pop_question.save
			redirect_to(:action => 'new')
		else
			render('new')
		end	
	end

	def list
		@pop_questions = PopQuestion.order("pop_questions.id ASC")
	end

	def edit
		@pop_question = PopQuestion.find (params[:id])
	end	
	
	def destroy
		@pop_question = PopQuestion.find (params[:id])
		@pop_question.destroy
		redirect_to(:action => 'list')
	end
end
