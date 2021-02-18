class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def accept?
    record.activity.user == user
  end

  def decline?
    record.activity.user == user
  end

  def index?
    false
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    record.user == user
  end

  def edit?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
