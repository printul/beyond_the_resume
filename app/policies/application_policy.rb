class ApplicationPolicy < BasePolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.videoable == user
  end


end
