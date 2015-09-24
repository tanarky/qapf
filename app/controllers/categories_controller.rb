class CategoriesController < ApplicationController
  def index
    @categories = Category.all().order("id desc").page
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def create
  end

  def new
  end
end
