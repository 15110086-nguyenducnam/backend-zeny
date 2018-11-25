module BackEnd::Helpers::RescueHelper
  extend ActiveSupport::Concern
  
  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      error!({ message: e.message }, 404)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      error!({ message: e.message }, 422)
    end

    rescue_from Grape::Exceptions::ValidationErrors do |e|
      error!({ messages: e.full_messages, message: e.full_messages[0] }, 400)
    end
  end
end