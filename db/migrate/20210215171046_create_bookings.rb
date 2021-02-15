class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.id :activity
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
