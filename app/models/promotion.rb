class Promotion < ActiveRecord::Base
  attr_accessible :content, :download_link, :download_name, :email, :map_link, :password, :phone, :photo1, :photo2, :photo3, :photo4, :subtitle, :title, :user_id, :video_embed
end
