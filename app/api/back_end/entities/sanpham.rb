module BackEnd::Entities
  class Sanpham < Grape::Entity
   expose :id
   expose :tensp
   expose :mota
   expose :photos, using: BackEnd::Entities::Photo
   expose :banggium, using: BackEnd::Entities::Banggium
  end
end