require 'bcrypt'

class User < ActiveRecord::Base
  
  has_many :workouts
  
  include BCrypt

  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true

  # Password encryption
  # def password
  #   @password ||= Password.new(password)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password = @password
  # end

  # Authenticate user
  # def authenticate(password)
  #   self.password == password
  # end
end
