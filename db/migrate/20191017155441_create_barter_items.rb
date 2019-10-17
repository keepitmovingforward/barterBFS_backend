class CreateBarterItems < ActiveRecord::Migration[6.0]
  def change
    create_table :barter_items do |t|
      t.integer :barter_id
      t.integer :item_id

      t.timestamps
    end
  end
end
