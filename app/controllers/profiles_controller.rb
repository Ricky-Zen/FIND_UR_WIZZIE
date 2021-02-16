class ProfilesController < ApplicationController
  def show
    @user = current_user
    @bookings = Booking.find(@user.id)
  end
end
