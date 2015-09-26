class CategoryPolicy < ApplicationPolicy
  def create?
    user.role == 'admin'
  end
end
