class Hopdongmuahang < ApplicationRecord
  # association
  belongs_to :khachhang
  has_many :chitiethdmuahangs, inverse_of: :hopdongmuahang
  has_many :sanphams, through: :chitiethdmuahangs

  # validates
  validates :khachhang, presence: true
  enum trangthaihd: [:pending, :accepted]
  # method
  def display_name
    "#{self.trangthaihd}"
  end
  rails_admin do
    label "Hợp đồng mua hàng"
    label_plural "Hợp đồng mua hàng"
    field :id do
      read_only true
    end
    field :trangthaihd do
      label "Trạng thái HD"
    end
    field :khachhang do
      label "Khách hàng"
    end
    field :chitiethdmuahangs
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
  end
end
