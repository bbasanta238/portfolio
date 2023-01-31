class AddColumnPhoneNumber < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :phone, :integer
    add_column :messages, :phone_number, :string
  end
end
