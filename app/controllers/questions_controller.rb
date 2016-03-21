class QuestionsController < ApplicationController

  define_method :index do
    @questions = Question.all
    render "overflow/index"
  end

  define_method :new do
    @question = Question.new
  end

  define_method :create do
    @question = Question.new question_params
    @question.votes = 0
    @question.views = 0
    @question.owner = current_user.email
    binding.pry
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  define_method :show do
    @question = Question.find params[:id]
    @answer = Answer.new
    render :show
  end

private
  define_method :question_params do
    params.require(:question).permit( :question, :content )
  end
end
