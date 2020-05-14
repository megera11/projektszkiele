class Eat < ApplicationRecord
  belongs_to :user
  has_many :pokarmy
end
