class Plant < ApplicationRecord
  belongs_to :user
  validates :name, uniqueness: { message: `%{value} is already taken` }
  validates :rytme, presence: { message: "veuillez indiquer à quelle frequence arroser cette plante" }
end
