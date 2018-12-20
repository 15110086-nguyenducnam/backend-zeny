module BackEnd::V1
  class Khuyenmais < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :khuyenmais do
      desc 'Return list of khuyen mai'
      get do
        khuyenmais = Khuyenmai.all
        if khuyenmais.present?
          present :status, true
          present khuyenmais, with: BackEnd::Entities::Khuyenmai
        else
          present :status, false
          present :message, "Không có khuyen mai"
        end
      end
    end
  end 
end