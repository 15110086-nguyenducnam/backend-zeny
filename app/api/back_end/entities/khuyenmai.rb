module BackEnd::Entities
  class Khuyenmai < Grape::Entity
    root "khuyenmais", "khuyenmai"
    expose :id
    expose :ngaybd
    expose :ngaykt
    expose :sanpham, using: BackEnd::Entities::Sanpham
  end
end