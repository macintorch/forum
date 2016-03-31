class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages
  
  devise :omniauthable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
end
