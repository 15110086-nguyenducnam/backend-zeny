module BackEnd::V1
  class Sanphams < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :sanphams do
      desc 'Return list of sanphams'
      get do
        sanphams = Sanpham.all
        if sanphams.present?
          present :status, true
          present sanphams, with: BackEnd::Entities::Sanpham
        else
          present :status, false
          present :message, "Không có sản phẩm"
        end
      end
      desc 'Return a specific sanpham'
      route_param :id do
        get do
          sanpham = Sanpham.find(params[:id])
          if sanpham.present?
            present :status, true
            present sanpham, with: BackEnd::Entities::Sanpham
          else
            present :status, false
            present :message, "Không tìm thấy sản ph"
          end
        end
      end
    end
  end 
end