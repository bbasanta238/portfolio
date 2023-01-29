class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email, null: false
      t.integer :phone
      t.string :subject, null: false
      t.string :message, null: false
      t.timestamps
    end
  end
end
