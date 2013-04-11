class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :password
      t.string :title
      t.string :subtitle
      t.string :phone
      t.string :email
      t.string :download_name
      t.string :download_link
      t.string :video_embed
      t.text :content
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.text :map_link
      t.integer :user_id

      t.timestamps
    end
  end
end
