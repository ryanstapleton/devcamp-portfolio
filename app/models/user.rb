class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable - rules about confirming an email before user account is created
  # :lockable - rules and configurations regarding lockout
  # :timeoutable - rules about timout login status
  # :omniauthable - rules about third party logins
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
