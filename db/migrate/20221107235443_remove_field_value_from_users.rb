class RemoveFieldValueFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :value, :float
  end
end
