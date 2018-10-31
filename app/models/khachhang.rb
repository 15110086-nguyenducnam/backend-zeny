class Khachhang < ApplicationRecord
  # accosiation
  belongs_to :loaikh, inverse_of: :khachhangs
  has_many :hopdongmuahangs

  # association
  validates :loaikh, :email, :diachi, :ho, :ten, :sdt, presence: true
  validates :trangthaihd, presence: true, numericality: true

  # rails_admin
  def display_name
    "#{self.ho} #{self.ten}"
  end
  rails_admin do
    label_plural "Khách hàng"
    field :id do
      read_only true
    end
    field :ho do
      label "Họ"
    end
    field :ten do
      label "Tên"
    end
    field :email do
      label "Email"
    end
    field :diachi do
      label "Dia Chi"
    end
    field :sdt do
      label "SDT"
    end
    field :loaikh do
      label "Loại khách hàng"
    end
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
  end
  
end
