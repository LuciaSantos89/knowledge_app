class PracticalQuestionController < ApplicationController
	def create
		@practical_question = PracticalQuestion.new( params.require(:practical_question).permit(:question, :time, :value, :resource) )
		if @practical_question.save
			redirect_to(:action => 'new')
		else
			render('new')
		end	
	end

	def list
		@practical_questions = PracticalQuestion.order("practical_questions.id ASC")
	end

	def edit
		@practical_question = PracticalQuestion.find (params[:id])
	end	
	
	def destroy
		@practical_question = PracticalQuestion.find (params[:id])
		@practical_question.destroy
		redirect_to(:action => 'list')
	end
end
