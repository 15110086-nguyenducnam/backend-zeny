class HopdongcungcapsController < ApplicationController

  def new
    @hopdong = Hopdongmuahang.includes(:chitiethdmuahangs).where(trangthaihd: "pending").decorate
    @hd = Hopdongcc.new
  end
  
end