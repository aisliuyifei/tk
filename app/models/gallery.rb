class Gallery < ActiveRecord::Base
  belongs_to :cat
  has_many :pics
  before_create :generate_token
  paginates_per 20
  
  
  def generate_token
    self.token = loop do
      random_token = SecureRandom.base64(12).gsub("/","a").gsub("+","b")
      break random_token unless Gallery.find_by_token(random_token)
    end
  end
  
end
