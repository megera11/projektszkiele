class Pokarmy < ApplicationRecord
  has_many :eat
  before_save {self.nazwa = nazwa.downcase}
  validates :nazwa, presence: true, length: {minimum:3 ,maximum: 30}
  validates :kalorie, presence: true,  numericality: { greater_than: 0, less_than: 1000 }
  validates :bialko, presence: true,  numericality: { greater_than: 0, less_than: 101 }
  validates :weglowodany, presence: true,  numericality: { greater_than: 0, less_than: 101 }
  validates :tluszcz, presence: true,  numericality: { greater_than: 0, less_than: 101 }
end
