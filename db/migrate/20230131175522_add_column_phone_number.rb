class AddColumnPhoneNumber < ActiveRecord::Migration[7.0]
  def change
    def up
      remove_column :messages, :phone, :integer
    end

    def down
      add_column :messages, :phone_number, :string
    end
  end
end
