class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :vents
<<<<<<< HEAD
  has_many :comments
=======
>>>>>>> 917d915b25e543bb84130a5fdce3092ffc649238
end
