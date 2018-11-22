class Nhacc < ApplicationRecord
  # assosication
  has_many :hopdongcc, inverse_of: :nhacc
  

  # validate
  validates :tennhacc, :diachi, :sdt, presence: true

  # method
  def display_name
    "#{self.tennhacc}"
  end
  rails_admin do
    label "Nhà cung cấp"
    label_plural "Nhà cung cấp"
      field :id do
        read_only true
      end
      field :tennhacc do
        label "Tên nhà cung cấp"
      end

      field :diachi do
        label "Địa chỉ"
      end
      field :sdt do
        label "Số điện thoại"
      end
      field :created_at do
          read_only true
        end
        field :updated_at do
          read_only true
        end
    end
end
