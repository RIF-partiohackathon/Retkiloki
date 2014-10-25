class AddInWoodsToType < ActiveRecord::Migration
  def change
    add_column :types, :in_woods , :boolean
  end
end
