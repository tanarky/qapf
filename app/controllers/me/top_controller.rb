class Me::TopController < ApplicationController
  before_action :authenticate_user!

  def index
    @questions = Question.where(user_id: current_user.id).order('id desc').limit(5)
    @answers = Answer.where(user_id: current_user.id).joins(:question).order('id desc').limit(5)
  end
end
