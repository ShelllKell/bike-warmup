class Shop < ActiveRecord::Base

  has_many :bikes
  has_many :buyers

end