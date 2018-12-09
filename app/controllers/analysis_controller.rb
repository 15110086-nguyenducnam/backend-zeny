class AnalysisController < ApplicationController
  
  def index
    muahang = Chitiethdmuahang.group(:sanpham_id).sum(:soluong)
    cungcap = Chitiethdcc.group(:sanpham_id).sum(:soluong)
    @hopdong = Hopdongmuahang.includes(:chitiethdmuahangs).where(trangthaihd: "pending").decorate
    @product = muahang.merge(cungcap) {|key, oldval, newval| newval - oldval}
    # @find_name = Chitiethdmuahang.decorate
  end
end
