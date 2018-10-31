class Loaikh < ApplicationRecord
  # association
  has_many :khachhangs, :inverse_of => :loaikh

  # validation
  validates :tenloaikh, presence: true
  
  # method 
  def display_name
    "#{self.tenloaikh}"
  end
  rails_admin do
    label_plural "Loại khách hàng"
    field :id do
      read_only true
    end
    field :tenloaikh do
      label "Tên loại khách hàng"
    end
    field :chietkhau do
      label "Chiết khấu"
    end
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
  end
end
