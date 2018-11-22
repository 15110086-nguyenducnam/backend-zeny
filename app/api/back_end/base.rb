module BackEnd
 class Base < Grape::API
  mount BackEnd::V1::Sanphams
  mount BackEnd::V1::Loaisps
  # mount BackEnd::V1::Nhaccs
 end
end