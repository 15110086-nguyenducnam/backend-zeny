class Chitiethdmuahang < ApplicationRecord
  # assosication
  belongs_to :sanpham
  belongs_to :hopdongmuahang

  # validate
  validates :sanpham, presence: true
  validates :dongia, :dongia, presence: true, numericality: true

  #rails admin 
  rails_admin do
    label "Chi tiết hợp đồng mua hàng"
    label_plural "Chi tiết hợp đồng mua hàng"
    field :id do
      read_only true
    end
    field :soluong do
      label "Số lượng"
    end
    field :dongia do
      label "Đơn giá"
    end
    field :sanpham do
      label "Sản phẩm"
      # enum do
      #   Sanpham.all.collect {|p| [p.tensp, p]}
      # end
    end
    field :hopdongmuahang do
      label "Hợp đồng mua hàng"
    end
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
  end
end
