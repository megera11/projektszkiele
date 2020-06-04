class Uzytkownik < ApplicationRecord
  belongs_to :user, required: false
  after_initialize :init
  #before_save :cos, if: :plec == "k"
  def init
    self.waga  ||= 1 #will set the default value only if it's nil
    self.wzrost ||= 1 #let's you set a default association
    self.rok_urodzenia ||= 1
    self.plec ||= "k"
  end

  def cos
   if self.plec == "k"
     self.prop_kcal=655+9.6*self.waga+1.85*self.wzrost-4.7*(DateTime.now.strftime('%Y')-self.rok_urodzenia)
   end
  end
  before_save{self.bmi=10000*self.waga/(self.wzrost*self.wzrost )}
  #if self.plec == "m"
  #rok = DateTime.now.strftime('%Y')
  #before_save{self.prop_kcal=66.5 + 13.7 * self.waga + 5 * self.wzrost - 6.8 * (2020 - self.rok_urodzenia)}
  #else
  #  before_save{self.prop_kcal=655+9.6*self.waga+1.85*self.wzrost-4.7*(DateTime.now.strftime('%Y')-self.rok_urodzenia)}
  #end
end
