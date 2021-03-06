class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plants, dependent: :destroy
  has_one_attached :photo
  validates :username, uniqueness: { message: "is already taken" }
end
