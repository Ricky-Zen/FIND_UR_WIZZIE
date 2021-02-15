class ActivitiesController < ApplicationController
  def index
    @activities = Acitivities.all
  end
end
