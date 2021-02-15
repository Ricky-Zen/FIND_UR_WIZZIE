class ChangePriceToActivities < ActiveRecord::Migration[6.0]
  def change
    change_column :activities, :price, :integer
  end
end
