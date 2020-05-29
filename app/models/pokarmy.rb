class Pokarmy < ApplicationRecord
  belongs_to :eat, required: false
  before_save {self.nazwa = nazwa.downcase}
  validates :nazwa, presence: true, length: {maximum: 30}
  validates :kalorie, presence: true
  validates :bialko, presence: true
  validates :weglowodany, presence: true
  validates :tluszcz, presence: true
end
