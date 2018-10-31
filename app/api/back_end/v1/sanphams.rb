module BackEnd::V1
  class Sanphams < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :sanphams do
      desc 'Return list of sanphams'
      get do
        sanphams = Sanpham.all
        present sanphams, with: BackEnd::Entities::Sanpham
      end
      desc 'Return a specific sanpham'
      route_param :id do
        get do
          sanpham = Sanpham.find(params[:id])
          present sanpham, with: BackEnd::Entities::Sanpham
        end
      end
    end
  end
end