class Plant < ApplicationRecord
  belongs_to :user
  validates :name, uniqueness: { message: `%{value} is already taken` }
  validates :rythme, presence: { message: "veuillez indiquer à quelle frequence arroser cette plante" }
end
