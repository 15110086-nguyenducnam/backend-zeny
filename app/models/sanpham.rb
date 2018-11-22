class Sanpham < ApplicationRecord
  # association
  belongs_to :loaisp
  has_many :banggium
  has_many :chitiethdccs
  has_many :hopdongccs, through: :chitiethdccs
  has_many :chitiethdmuahangs
  has_many :hopdongmuahangs, through: :chitiethdmuahangs
  has_many :photos

  # validate 
  validates :loaisp, :tensp, :photos, presence: true
  accepts_nested_attributes_for :photos
  
  # rails_admin
  def display_name
    "#{self.tensp}"
  end
  rails_admin do
    label "Sản phẩm"
    label_plural "Sản phẩm"
    field :id do
      read_only true
    end
    field :tensp do
      label "Tên"
    end
    field :loaisp do
      label "Loại SP"
    end
    field :thongso do
      label "Thông số"
    end
    field :photos
    field :mota, :ck_editor do
      label "Mô tả"
    end
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
    # show do
    #   label_plural "Sản phẩm"
    # end
  end
end