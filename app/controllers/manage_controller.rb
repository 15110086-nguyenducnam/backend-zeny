class ManageController < ApplicationController
  before_action :set_manage, only: [ :update]
  before_action :authenticate_admin!

  def index
    @hopdong = Hopdongmuahang.includes(:chitiethdmuahangs).where(trangthaihd: "pending").decorate
  end

  def update
    if @hopdong.pending!
      @hopdong.accepted!
      flash[:notice] = "Cập nhật thành công...."
    else
      flash[:notice] = "Cập nhật thất bại....."
    end
    redirect_to manage_index_path
  end

  private

  def set_manage
    @hopdong = Hopdongmuahang.find(params[:id])
  end
  
end
