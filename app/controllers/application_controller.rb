class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :get_categories

  def get_categories
    @categories = Category.all.order('parent_id')
  end
end
