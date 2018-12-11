class Nhanhieu < ApplicationRecord
  belongs_to :loaisp

  rails_admin do
    label "Nhã Hiệu"
    label_plural "Nhãn hiệu"
    field :id do
      read_only true
    end
    field :ten do
      label "Tên"
    end
    field :loaisp do
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
