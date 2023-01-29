class RenameMessageColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :messages, :message, :text
  end
end
