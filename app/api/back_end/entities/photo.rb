module BackEnd::Entities
  class Photo < Grape::Entity
   expose :image_file_name do |photo, opts|
    photo.image.url
   end
  end
end