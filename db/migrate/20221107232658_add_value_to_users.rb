class AddValueToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :value, :float
  end
end
