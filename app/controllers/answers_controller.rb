class AnswersController < ApplicationController

  define_method :new do
    @question = Question.find( params[:question_id] )
    @answer = Answer.new
  end

  define_method :create do
    @question = Question.find params[:question_id]
    @answer = @question.answers.new( answer_params )
    @answer.owner = current_user.email
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      render :new
    end
  end

  private
  define_method :answer_params do
    params.require(:answer).permit( :content )
  end
end
