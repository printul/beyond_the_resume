class PostingPolicy < BasePolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def create?
    user.is_business?
  end

  def update?
    user.is_business?
  end

  def destroy?
    user.is_business?
  end

end
