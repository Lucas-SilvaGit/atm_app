class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :balance, :float
    add_column :users, :inactive_at, :datetime
  end
end
