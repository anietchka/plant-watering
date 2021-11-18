class Plant < ApplicationRecord
  belongs_to :user
  validates :name, uniqueness: { message: `%{value} is already taken` }
  validates :rythm, presence: { message: "veuillez indiquer à quelle frequence arroser cette plante" }
  has_one_attached :photo
  before_save :set_alive

  private

  def set_alive
    self.alive = true
  end
end
