module BackEnd
 class Base < Grape::API
  helpers do
    include BackEnd::Helpers::APIHelper
  end
  mount BackEnd::V1::Sanphams
  mount BackEnd::V1::Loaisps
  mount BackEnd::V1::Auths
  mount BackEnd::V1::Khachhangs
  # mount BackEnd::V1::Nhaccs
 end
end