class Pic < ActiveRecord::Base
  belongs_to :gallery
  
  before_create :generate_token
  
  paginates_per 1
  
  
  
  def generate_token
    self.token = loop do
      random_token = SecureRandom.base64(12).gsub("/","a").gsub("+","b")
      break random_token unless Pic.find_by_token(random_token)
    end
  end
end
