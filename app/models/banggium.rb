class Banggium < ApplicationRecord
  # association
  belongs_to :sanpham
  # validates
  validates :gia, presence: true, numericality: true
  validates :sanpham, presence: true
  validate :check_price

  private
  # check gia sp > gia hop dong cc
  def check_price
    dongia = Chitiethdcc.where(sanpham_id: self.sanpham_id).last
    # binding.pry
    if dongia.present? and dongia.dongia > self.gia
      errors.add :dongia, "Phải lớn hơn #{dongia.dongia}"
    end
    
  end
  
  #rails_admin
  rails_admin do
    label "Bảng giá"
    label_plural "Bảng giá"
    
    field :id do
      read_only true
    end
    field :gia do
      label "Giá"
    end
    field :sanpham do
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
