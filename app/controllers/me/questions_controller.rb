# coding: utf-8
class Me::QuestionsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def new
    @question = Question.new
  end

  def show
  end

  def edit
  end

  def create
    redirect_to me_questions_path, :notice => "new question created"
  end

  def update
  end

  def delete
  end
end
