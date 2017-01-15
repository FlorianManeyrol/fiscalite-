class Juice < ApplicationRecord
  validates :name, presence: true
  validates :ingredient, presence: true
end
