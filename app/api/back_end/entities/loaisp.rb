module BackEnd::Entities
  class Loaisp < Grape::Entity
    root "loaisps", "loaisp"
    expose :id
    expose :ten
    expose :sanphams, using: BackEnd::Entities::Sanpham
  end

end