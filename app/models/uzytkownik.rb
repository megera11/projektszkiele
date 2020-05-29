class Uzytkownik < ApplicationRecord
  belongs_to :user, required: false
end
