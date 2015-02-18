class Author < ActiveRecord::Base
  has_secure_password
  has_many :surveys

  def self.find_author_with_email
    self.finb_by_email("shakespeare@example.com")
  end

  def find_by_last
    self.last
  end
  
end
