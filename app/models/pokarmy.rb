class Pokarmy < ApplicationRecord
  has_many :eat
  before_save {self.nazwa = nazwa.downcase}
  validates :nazwa, presence: true, length: {minimum:3 ,maximum: 30}
  validates :kalorie, presence: true
  validates :bialko, presence: true
  validates :weglowodany, presence: true
  validates :tluszcz, presence: true
end
