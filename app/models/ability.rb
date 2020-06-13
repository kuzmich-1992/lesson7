class Ability
  include CanCan::Ability

  def initialize(user)
    can :show, User, :id => user.id
    if user.role?(:admin)
      can :manage, :all
    else
      can :show, User, :id => user.id
    end
  end
end
