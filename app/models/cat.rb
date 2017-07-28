class Cat < ActiveRecord::Base
  has_many :galleries
  before_create :generate_token
  
  
  def generate_token
    self.token = loop do
      random_token = SecureRandom.base64(12).gsub("/","a").gsub("+","b")
      break random_token unless Cat.find_by_token(random_token)
    end
  end
  
  def random_galleries(count)
    galleries.limit(count)
  end
  
end
