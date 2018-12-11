module BackEnd::Entities
  class Khachhang < Grape::Entity
    root 'khachhangs', 'khachhang'
    expose :id
    expose :ten
    expose :ho
    expose :sdt
    expose :diachi
    expose :api_key, using: BackEnd::Entities::ApiKey do |api, opts|
      api.api_keys.last
    end
  end

  class UserNoAPIKey < Khachhang
    unexpose :api_key
  end
end