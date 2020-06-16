class UserPolicy < ApplicationPolicy
  def update?
    user.role?(:admin)
  end

  def index?
    user.role?(:admin) 
  end

  def create?
    user.role?(:admin)
  end

  def edit?
    user.role?(:admin)  
  end

  def destroy?
    user.role?(:admin)  
  end

end