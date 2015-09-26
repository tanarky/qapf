# coding: utf-8
class Me::QuestionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @questions = Question.where(user_id: current_user.id).joins(:category).order("id desc").page
  end

  def new
    @question = Question.new
  end

  def show
  end

  def edit
  end

  def create
    @question = Question.new(title: params['question']['title'],
                             user_id: current_user.id, 
                             body: params['question']['body'])
    if @question.save
      redirect_to me_questions_path, :notice => "new question created"
    else
      flash.now[:alert] = 'invalid data'
      render :new
    end
  end

  def update
  end

  def delete
  end
end
