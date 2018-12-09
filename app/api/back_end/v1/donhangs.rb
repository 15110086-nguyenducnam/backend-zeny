module BackEnd::V1
  class Donhangs < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :donhangs do
      before { user_authenticate! }
      desc 'Return list of don hang'
      get do
        donhang = Hopdongmuahang.all
        if donhang.present?
          present :status, true
          present donhang
        else
          present :status, false
          present :message, "Không có sản phẩm"
        end
      end
      desc "don hang"
      params do 
        requires :id_khachhang, type:Integer
        requires :so_luong, type:Integer
        requires :don_gia, type:Float
        requires :id_sanpham, type: Integer
      end

      post :donhang do
        don  = Hopdongmuahang.new(khachhang_id: params[:id_khachhang])
        # binding.pry
        if don.save
          chitiet = Chitiethdmuahang.new(soluong: params[:so_luong], dongia: params[:don_gia], sanpham_id: params[:id_sanpham], hopdongmuahang_id: don.id)
          chitiet.save
          present status: true   
        else
          present status: false
        end

      end

    end
  end
end