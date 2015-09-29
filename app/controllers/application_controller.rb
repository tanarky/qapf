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

    depth = 3
    start = '0'
    @cat_tree_view = tree_view(@cat_hash, @cat_tree, start, depth)
  end

  def tree_view(h, t, start, depth)
    if depth < 1 or t[start] == nil
      return ''
    end

    html = '<ul>'
    t[start].each do |i|
      key = "#{start}/#{i}"
      html += '<li>'
      html += h[i]['name']
      html += tree_view(h, t, key, depth - 1)
      html += '</li>'
    end
    html += '</ul>'
    html
  end
end

