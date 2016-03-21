class AnswersController < ApplicationController

  define_method :new do
    @question = Question.find( params[:question_id] )
    @answer = Answer.new
  end
end
