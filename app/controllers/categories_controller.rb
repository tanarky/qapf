class CategoriesController < ApplicationController
  before_action :authenticate_admin,
                only: [:new, :create, :update, :edit, :destroy]
  
  def index
    @categories = Category.all().order("id desc").page
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
    @category = Category.new(name: params['category']['name'])
    authorize @category
    if @category.save
      redirect_to categories_path, :notice => "new category created"
    else
      flash.now[:alert] = t('hello')
      render :new
    end
  end

  def new
    @category = Category.new
  end

  private
  def authenticate_admin
    redirect_to categories_path unless current_user && current_user.admin?
  end
end
