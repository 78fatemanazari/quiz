class QuizController < ApplicationController
  def index
    # Start the quiz by resetting the score and setting the question index
    session[:score] = 0
    session[:question_index] = 0
    render 'quiz/index'
  end

  def show_result
    @score = session[:score]
    # Reset session variables
    session.delete(:score)
    session.delete(:question_index)
  end
end
