module BackEnd::Entities
  class Loaisp < Grape::Entity
    expose :id
    expose :ten
    expose :sanphams, using: BackEnd::Entities::Sanpham
  end

end