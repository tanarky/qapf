class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :get_categories

  def get_categories
    @categories = Category.all
    @cat_hash = {}
    @cat_tree = {}

    @categories.each do |c|
      @cat_hash[c.id] = c.attributes

      if c.ancestry != nil
        unless @cat_tree[c.ancestry]
          @cat_tree[c.ancestry] = []
        end
        @cat_tree[c.ancestry].push(c.id)
      end
    end
  end
end

