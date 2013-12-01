class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         #:registerable, #do not allow user signups
         :recoverable, :rememberable, :trackable, :validatable,
         #enable devise timeouts
         :timeoutable, :timeout_in => 15.minutes

  #an admin can create many articles
  has_many :articles
end
