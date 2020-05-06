class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer_user = params[:answer_user]
    if @answer_user == "i am going to work right now!"
      @answer_coach = "Great"
    elsif @answer_user.end_with?("?")
      @answer_coach = "Silly question, get dressed and go to work!"
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
