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

 create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "price"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end
