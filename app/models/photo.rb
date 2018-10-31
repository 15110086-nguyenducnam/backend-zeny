class Photo < ApplicationRecord
  belongs_to :sanpham, inverse_of: :photos
  attr_accessor :image
    # paper clip
  has_attached_file :image,
      :styles => {
      :thumb => "50x50#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # add a delete_<image_name> method: 
  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }
  # accepts_nested_attributes_for :image
  rails_admin do
    # field :id
    field :image, :paperclip
  end
end
