class User < ActiveRecord::Base
  
  has_secure_password
  
  has_many :favorites
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, :last_name,  :presence => true,
                                     :length   => { :maximum => 50 }
  validates :email,                   :presence => true,
                                      :format   => { :with => email_regex },
                                      :uniqueness => { :case_sensitive => false }
  
  validates :zip, :numericality => true, :length => {:is => 5}
end
