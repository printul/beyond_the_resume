class UserPolicy < BasePolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    record == user
  end
end
