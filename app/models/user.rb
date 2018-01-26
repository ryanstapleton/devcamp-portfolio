class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable - rules about confirming an email before user account is created
  # :lockable - rules and configurations regarding lockout
  # :timeoutable - rules about timout login status
  # :omniauthable - rules about third party logins
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name
  
  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
end
