class RemoveColumnName < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :phone
  end
end
