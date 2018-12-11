class Khuyenmai < ApplicationRecord
  belongs_to :sanpham
  validates :ngaybd, :ngaykt, presence: true
  validate :check_day

  rails_admin do
    label "Khuyến mãi"
    label_plural "Khuyến mãi"
    field :sanpham do
      label "Sản phẩm"
    end
    field :ngaybd do
      label "Ngày bắt đầu"
    end
    field :ngaykt do
      label "Ngày kết thúc"
    end
    
  end

  private 

  def check_day
    # binding.pry
    if self.ngaybd < DateTime.now
      errors.add :ngaybd, "Ngày bắt đầu bé hơn ngày hiện tại..."
    else
      if self.ngaybd > self.ngaykt
        errors.add :ngaykt, "Ngày kết thúc bé hơn ngày bắt đầu..."
      end
    end
  end
  
end
