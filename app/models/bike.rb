class Bike < ActiveRecord::Base

  has_one :buyer
  has_one :shop

  belongs_to :buyer

  def favorited_by
   brand = self.brand
   person = Buyer.find_by(:favorite_brand => brand)
   "#{person.first_name} #{person.last_name}"
  end

end