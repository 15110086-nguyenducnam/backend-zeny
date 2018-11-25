module BackEnd::V1
  class Khachhangs < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resources :khahhangs do
      include BackEnd::Helpers::RescueHelper
      before { user_authenticate! }
      # before do
      #   user_authenticate!
      # end
      desc "API for 1 user" do
        success BackEnd::Entities::Khachhang
        headers access_token: {
          description: "Validates your indentity",
          required: true
        }
      end
      route_param :id do 
        get do
          user = Khachhang.find(params[:id])
          present user, with: BackEnd::Entities::Khachhang
        end
      end
    end
  end
end