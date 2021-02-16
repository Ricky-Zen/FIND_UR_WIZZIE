class ProfilesController < ApplicationController
  def show
    @user = current_user
    @bookings = Booking.where(user: @user)
  end
end
