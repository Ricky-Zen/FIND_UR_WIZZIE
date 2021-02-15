class ChangeActivityrefToBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :activity
  end
end
