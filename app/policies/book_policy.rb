class BookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    return true
  end

  def create?
    true
  end

  def new?
    create?
  end
end
