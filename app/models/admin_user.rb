class AdminUser < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :fullname
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  
  def to_s
    fullname || email || "Anonymous"
  end
end
