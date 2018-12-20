class AnalysisController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    muahang = Chitiethdmuahang.group(:sanpham_id).sum(:soluong)
    cungcap = Chitiethdcc.group(:sanpham_id).sum(:soluong)
    @hopdong = Hopdongmuahang.includes(:chitiethdmuahangs).where(trangthaihd: "pending").decorate
    @product = muahang.merge(cungcap) {|key, oldval, newval| newval - oldval}
    # @sanpham = TotalProduct::CheckExit.new(1).call
    # binding.pry
  end

  def get_chart
    sanpham = TotalProduct::CountProduct.new().call
    render json: sanpham.to_a 
  end
end
