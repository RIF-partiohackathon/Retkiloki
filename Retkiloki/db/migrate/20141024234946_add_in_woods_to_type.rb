class AddInWoodsToType < ActiveRecord::Migration
  def change
    add_column :type, :inWoods ,:boolean
  end
end
