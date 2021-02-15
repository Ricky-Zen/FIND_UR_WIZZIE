class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :city
      t.text :description
      t.references :theme, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
