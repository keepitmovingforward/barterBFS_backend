class CreateBarters < ActiveRecord::Migration[6.0]
  def change
    create_table :barters do |t|
      t.string :description
      t.string :message
      t.integer :sender_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
