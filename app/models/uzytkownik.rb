class Uzytkownik < ApplicationRecord
  belongs_to :user, required: false
  after_initialize :init
  before_save :cos, if: :plec?
  def init
    self.waga  ||= 1
    self.wzrost ||= 1
    self.rok_urodzenia ||= 1
    self.plec ||= "k"
  end

  def cos
   if self.plec == "k"
    self.prop_kcal=1.2 * (655 + 9.6 * self.waga + 1.85 * self.wzrost - 4.7 * (2020 - self.rok_urodzenia))
   else
    self.prop_kcal=1.2 * (66.5 + 13.7 * self.waga + 5 * self.wzrost - 6.8 * (2020 - self.rok_urodzenia))
   end
  end
  before_save{self.bmi=10000*self.waga/(self.wzrost*self.wzrost )}
end
