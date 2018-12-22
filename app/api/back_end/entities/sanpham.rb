module BackEnd::Entities
  class Sanpham < Grape::Entity
    root "sanphams", "sanpham"
    expose :id
    expose :tensp
    expose :mota
    expose :photos, using: BackEnd::Entities::Photo
    expose :banggium, as: :gia, using: BackEnd::Entities::Banggium do |gia, opts|
      gia.banggium.last
    end

    # private

    # def thongso
    #   pairs = object.thongso.scan(/(\w+):\s+([^;]+)/).map { |k, v| [k.to_sym, v.strip] }
    #   Hash[pairs]
    # end
  end
end