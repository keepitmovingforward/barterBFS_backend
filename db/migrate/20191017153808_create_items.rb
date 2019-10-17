class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_url
      t.integer :views
      t.integer :user_id

      t.timestamps
    end
  end
end
