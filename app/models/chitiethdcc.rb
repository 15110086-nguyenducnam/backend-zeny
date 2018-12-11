class Chitiethdcc < ApplicationRecord
  # association
  belongs_to :hopdongcc
  belongs_to :sanpham

  # validate
  validates :soluong, :dongia, presence: true, numericality: true
  # validates :hopdongcc, presence: true
  validates :sanpham, presence: true

  def avalaible_product
    hopdongs = Chitiethdcc.arel_table
    muahangs = Chitiethdmuahang.arel_table
    hopdongs.join(muahangs).on(hopdongs[:sanpham_id].eq(muahangs[:sanpham_id]))
  end

  # rails_admin
  # def display_name
  #   "#{self.dongia}"
  # end
  rails_admin do
    label "Chi tiết hợp đồng cung cấp"
    label_plural "Nhập hàng"
    
    field :id do
      read_only true
    end
    field :soluong do
      label "Số lượng"
    end
    field :dongia do
      label "Đơn giá"
    end
    field :hopdongcc do
      label "Hợp đồng cung cấp"
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
