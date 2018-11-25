module BackEnd::Entities
  class Khachhang < Grape::Entity
    root 'khachhangs', 'khachhang'
    expose :id
    expose :ten
    expose :ho
    expose :sdt
    expose :diachi

    # expose :sanphams, using: BackEnd::Entities::Sanpham
  end

  class UserNoAPIKey < Khachhang
    unexpose :api_key
  end
end