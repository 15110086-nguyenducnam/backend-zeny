class KhuyenmaisController < ApplicationController

  def index
    @hopdong = Hopdongmuahang.includes(:chitiethdmuahangs).where(trangthaihd: "pending").decorate
    @khuyenmai = Khuyenmai.new
  end

  def create
    @khuyenmai = Khuyenmai.new(params_khuyenmai)

    binding.pry
    if @khuyenmai.save
      flash[:success] = 'Create successfully!'
      # redirect_to Something_path
    else
      flash.now[:danger] = @khuyenmai.errors.full_messages.join(', ')
      redirect_to khuyenmais_path
    end
  end

  def khuyenmai_loaisp
    
  end

  def khuyenmai_sanpham
    
  end
  
  
  
  private

  def params_khuyenmai
     params.require(:khuyenmai).permit(:ngaybd, :ngaykt, :loaisp)
  end
  

end
