class KhuyenmaisController < ApplicationController
  # before_action :check_day, only: [ :update, :create]

  def index
    @hopdong = Hopdongmuahang.includes(:chitiethdmuahangs).where(trangthaihd: "pending").decorate
    @khuyenmai = Khuyenmai.where("ngaybd >= ? ", DateTime.now)
  end

  def create
    @khuyenmai = Khuyenmai.new(params_khuyenmai)

    if @khuyenmai.save
      flash[:success] = 'Create successfully!'
      redirect_to khuyenmais_path
    else
      flash.now[:danger] = @khuyenmai.errors.full_messages.join(', ')
      # binding.pry
      redirect_to khuyenmais_path
    end
  end
  
  private

  def params_khuyenmai
     params.require(:khuyenmai).permit(:ngaybd, :ngaykt, :sanpham)
  end
  

end
