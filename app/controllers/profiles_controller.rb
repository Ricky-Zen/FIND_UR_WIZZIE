class ProfilesController < ApplicationController
  def show

    @user = current_user
    @bookings = Booking.where(user: @user)

    @activities = Activity.where(user: @user)


    @booking_users = []

    @bookings.each do |user|
      @booking_users << user.user_id
    end

    @users = []
    @booking_users.each do |id|
      @users << User.find(id)
    end

    authorize(@bookings)
    authorize(@activities)
  end
end
