class Hopdongcc < ApplicationRecord
  # assosication
  belongs_to :nhacc
  has_many :chitiethdccs
  has_many :sanphams, through: :chitiethdccs

  #validate 
  validates :trangthaihd, presence: true, numericality: true
  validates :tenhdcc, presence:true
  
  # rails_amin
  def display_name
    "#{self.tenhdcc}"
  end
  rails_admin do
    label_plural "Hợp đồng cung cấp"
    field :id do
      read_only true
    end
    field :tenhdcc do
      label "Ten HDCC"
    end
    field :trangthaihd do
      label "Trạng thái HD"
    end
    field :nhacc do
      label "Nhà CC"
    end
    field :chitiethdccs do
      label "Chi tiết HDCC"
    end
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
  end
end
