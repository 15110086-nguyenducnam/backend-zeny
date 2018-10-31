module BackEnd::Entities
  class Banggium < Grape::Entity
   expose :gia do |gia, opts|
    gia.gia
   end
  end
end