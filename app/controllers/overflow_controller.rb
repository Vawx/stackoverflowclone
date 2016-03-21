class OverflowController < ApplicationController
  define_method :index do
    @questions = Question.all
    render :index
  end

  define_method :new do
    @overflow = Question.new
    render :new
  end
end
