module BackEnd::V1
  class Nhaccs < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :nhaccs do
      desc 'Return list of sanphams'
      get do
        nhaccs = Nhacc.all
        present nhaccs, with: BackEnd::Entities::Nhacc
      end
      desc 'Return a specific sanpham'
      route_param :id do
        get do
          nhacc = Nhacc.find(params[:id])
          present nhacc, with: BackEnd::Entities::Nhacc
        end
      end
    end
  end
end