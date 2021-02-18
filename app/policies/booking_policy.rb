class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def new?
      true
    end

    def create?
      true
    end

    def accept?
      true
    end

    def decline?
      true
    end
  end
end
