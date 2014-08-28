class Bike < ActiveRecord::Base

  has_one :buyer
  has_one :shop

  belongs_to :buyer
  belongs_to :shop

end