class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :wishilists, dependent: :destroy
  has_many :wishilisted_properties, through: :wishilist, source: :property, dependent: :destroy
end
