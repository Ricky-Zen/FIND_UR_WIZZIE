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
    @booking.user = current_user
    if @booking.save
      redirect_to profile(@booking_user)
    else
      render :new
    end
  end

  def accept
    @booking.status = 'accepted'
    if @booking.save
      redirect_to activity_path(@booking.activity), notice: "ACCEPTED ! U DA ONE"
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
    params.require(:booking).permit(:status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
