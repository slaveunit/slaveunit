class User < ActiveRecord::Base
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	 :recoverable, :rememberable, :trackable, :validatable
	has_many :orders

	has_many :comments

# VALIDATION
   	validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
# VALIDATION

end
