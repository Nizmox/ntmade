class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         #:registerable, #do not allow user signups
         :recoverable, :rememberable, :trackable, :validatable
end
