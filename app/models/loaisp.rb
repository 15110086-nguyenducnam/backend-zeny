class Loaisp < ApplicationRecord
  # association
  has_many :sanphams
  has_many :nhanhieu
  
  # validate
  validates :ten, presence: true

  def display_name
    "#{self.ten}"
  end
  rails_admin do
    label_plural "Loại sản phẩm"
    label "Loại sản phẩm"
    field :id do
      read_only true
    end
    field :ten do
      label "Tên loại SP"
    end
    field :nhanhieu do
      label "Tên nhãn hiệu"
    end
    field :sanphams do
      label "Sản phẩm"
    end
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
  end
end
