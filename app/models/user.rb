class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages, dependent: :destroy
  has_many :comments, dependent: :destroy

  devise :omniauthable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
end
