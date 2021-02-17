class BookingsController < ApplicationController
  before_action :find_booking, only: [ :accept, :decline, :cancel ]

  def new
    @user = current_user
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
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
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
