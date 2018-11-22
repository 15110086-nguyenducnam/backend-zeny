class Nhanhieu < ApplicationRecord
  # validation
  has_many :loaisps
  # 

  rails_admin do
    label "Nhã Hiệu"
    label_plural "Nhãn hiệu"
      field :id do
        read_only true
      end
      field :ten do
        label "Tên"
      end
      field :created_at do
          read_only true
        end
        field :updated_at do
          read_only true
        end
    end
end
