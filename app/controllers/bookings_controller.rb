class BookingsController < ApplicationController
  before_action :find_booking, only: [:accept, :decline, :cancel]

  def new
    @user = current_user
    @booking = Booking.new
    authorize(@booking)
  end

  def create
    @booking = Booking.new(booking_params)
    authorize(@booking)
    @activity = Activity.find(params[:activity_id])
    authorize @activity
    @booking.activity = @activity
    @booking.user = current_user
    if @booking.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = 'accepted'
    if @booking.save
      redirect_to profile_path, notice: "ACCEPTED !"
    else
      render :new
    end
  end

  def decline
  end

  def cancel
    @booking.status = 'cancelled'
    if @booking.save
      redirect_to profile_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :user_id, :activity_id, :date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
