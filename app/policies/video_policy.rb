class VideoPolicy < BasePolicy
  class Scope < Scope
    def resolve
      scope.where(videoable: user)
    end
  end

  def show?
    user_is_owner?
    # scope.where(:id => record.id).exist?
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
