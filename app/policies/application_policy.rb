class ApplicationPolicy < BasePolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def show?
    user_is_owner?
    scope.where(:id => record.id).exist?
  end

  def create?
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
    record.videoable == user
  end


end
