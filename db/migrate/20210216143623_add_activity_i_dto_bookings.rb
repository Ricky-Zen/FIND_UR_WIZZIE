class AddActivityIDtoBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :activity, foreign_key: true
  end
end
