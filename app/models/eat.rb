class Eat < ApplicationRecord
  belongs_to :user
  belongs_to :pokarmy
  validates :ilosc, presence: true
  validates :pokarmy_id, presence: true
end
