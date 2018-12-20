class HopdongcungcapsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @hopdong = Hopdongmuahang.includes(:chitiethdmuahangs).where(trangthaihd: "pending").decorate
    @hd = Hopdongcc.new
  end
  
end