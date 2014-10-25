class AddAgeGroupToUser < ActiveRecord::Migration
  def change
    add_column :users, :age_group_id, :integer
  end
end
