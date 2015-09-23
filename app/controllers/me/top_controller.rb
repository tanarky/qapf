class Me::TopController < ApplicationController
  before_filter :authenticate_user!

  def index
    @questions = Question.where(user_id: current_user.id).order('id desc').limit(5)
  end
end
