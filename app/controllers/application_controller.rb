class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :get_categories

  def get_categories
    cats = Category.all.order('parent_id')
    @categories = cats
    #cathash = {}
    #catchld = {}
    #cats.each do |c|
    #  cathash[c.id.to_s] = {id: c.id, name: c.name, parent_id: c.parent_id}
    #
    #  pid = c.parent_id ? c.parent_id : 0
    #  unless catchld[pid.to_s]
    #    catchld[pid.to_s] = []
    #  end
    #  catchld[pid.to_s].push(c.id.to_s)
    #end
    #
    #cat2 = {}
    #Rails.logger.info(cathash)
    #Rails.logger.info(catchld)
    #build_tree(cat2, cathash, catchld, "0")
    #Rails.logger.info(cat2)
  end

  #def build_tree(ret, cathash, catchld, k)
  #  catchld[k].each do |c|
  #    Rails.logger.debug(c + " : " + c.class.to_s)
  #    ret[c] =
  #      cathash[c]
  #    ret[c]['children'] = []
  #    if catchld[c]
  #      build_tree(ret[c]['children'], cathash, catchld, c)
  #    end        
  #  end
  #end
end
