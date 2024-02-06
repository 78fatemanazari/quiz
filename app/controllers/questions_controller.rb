class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def submit_answer
    @question = Question.find(params[:question_id])
    @selected_answer = Answer.find(params[:answer_id])
    @correct_answer = @question.answers.find_by(correct: true)

    if @selected_answer == @correct_answer
      session[:score] ||= 0
      session[:score] += 1
    end

    # Redirect to the next question or show the result if all questions have been answered
    if session[:question_index] < Question.count - 1
      session[:question_index] += 1
      redirect_to question_path(Question.offset(session[:question_index]).first)
    else
      redirect_to show_result_path
    end
  end
end