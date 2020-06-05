class Eat < ApplicationRecord
  belongs_to :user
  belongs_to :pokarmy
  validates :ilosc, presence: true, numericality: { greater_than: 0, less_than: 30 }
  validates :pokarmy_id, presence: true

  before_save{self.data=Date.today}

end
