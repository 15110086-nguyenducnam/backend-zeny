module BackEnd::Entities
  class Nhacc < Grape::Entity
    expose :id
    expose :tennhacc
    expose :diachi
    expose :sdt
  end
end