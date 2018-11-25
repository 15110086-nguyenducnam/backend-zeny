module BackEnd::V1
  class Loaisps < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :loaisps do
      desc 'Return list of Loai san pham'
      get do
        loaisps = Loaisp.all
        if loaisps.present?
          present :status, true
          present loaisps, with: BackEnd::Entities::Loaisp
        else
          present :status, false
          present :message, "Không tìm thấy loại sản phẩm"
        end
      end
      desc 'Return a specific sanpham through id loaisp'
      route_param :id do
        get do
          loaisp = Loaisp.find(params[:id]).sanphams
          if loaisp.present?
            present :status, true
            present loaisp, with: BackEnd::Entities::Sanpham
          else
            present :status, false
            present :message, "Không tìm thấy sản phẩm với loại sản phẩm tr"
          end
        end
      end
    end
  end
end