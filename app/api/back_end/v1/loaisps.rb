module BackEnd::V1
  class Loaisps < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :loaisps do
      desc 'Return list of Loai san pham'
      get do
        loaisps = Loaisp.all
        present loaisps, with: BackEnd::Entities::Loaisp
      end
      desc 'Return a specific sanpham'
      route_param :id do
        get do
          loaisp = Loaisp.find(params[:id]).sanphams
          present loaisp, with: BackEnd::Entities::Sanpham
        end
      end
    end
  end
end