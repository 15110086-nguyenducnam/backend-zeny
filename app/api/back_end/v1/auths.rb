module BackEnd::V1
  class Auths < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    resource :auths do
      
      desc "API for authenticate" do
        success BackEnd::Entities::Khachhang
      end

      # get do
      #   sanphams = Khachhang.all
      #   present :status, true
      #   present sanphams, with: BackEnd::Entities::Khachhang
      # end

      params do
        requires :email, type: String
        requires :password, type: String
      end

      post :login do
        user = Khachhang.find_by_email(params[:email])

        if user && user.valid_password?(params[:password])
          user.api_keys.create

          present :status, true
          present user, with: BackEnd::Entities::Khachhang
        else
          present :status, false
          present :message, "Invalid email or password"
        end
      end

      desc "API for logout" do
        headers access_token: {
          description: 'Validates your identity',
          required: true
        }
      end

      delete :logout do
        user_authenticate!
         
        if logout
          present :status, true
        else
          present :status, false
        end
      end

      desc "API for signup"
      params do 
        requires :email, type:String
        requires :password, type:String
        requires :password_confirmation, type:String
        # requires :profile_attributes,type:Hash do
        #   requires :name,type:String
        #   requires :phone,type:String
        #   requires :address,type:String  
        # end
      end

      post :signup do 
         resource = Khachhang.new(params)

         if resource.save 
          present status: true   
        else 
            
          present status: false 
         end 
      end 
    end
  end 
end