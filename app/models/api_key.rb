class ApiKey < ApplicationRecord
  belongs_to :khachhang
  
  before_save :generate_token

  rails_admin do
    visible false
  end

  private
    def generate_token
      loop do
        self.token = SecureRandom.base64(64)
        break unless self.class.find_by(token: token)
      end if self.new_record?
    end
end
