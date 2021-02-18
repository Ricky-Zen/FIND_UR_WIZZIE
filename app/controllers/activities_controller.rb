class ActivitiesController < ApplicationController
  def index
    @activities = policy_scope(Activity).order(created_at: :desc)

    if params.dig(:activities, :name).present?
      @activities = @activities.search_activity(params[:activities][:name])
    end

    if params.dig(:activities, :theme).present?
      @activities = @activities.search_theme(params[:activities][:theme])
    end

    if params.dig(:activities, :city).present?
      @activities = @activities.search_city(params[:activities][:city])
    end
  end

  def show
    @activity = Activity.find(params[:id])
    authorize(@activity)
    @booking = Booking.new
  end

  def new
    @activity = Activity.new
    authorize(@activity)
  end

  def create
    @activity = Activity.new(activity_params)
    authorize(@activity)
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity), notice: 'Magic is in the air !'
    else
      render :new
    end
   end

  def destroy
    @activity = Activity.find(params[:id])
    authorize(@activity)
    if @activity.destroy
      redirect_to profile_path
    end
  end


  private

  def activity_params
    params.require(:activity).permit(:name, :city, :description, :price, :category, :theme_id, :photo)
  end
end
