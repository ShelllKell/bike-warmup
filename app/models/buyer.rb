class Buyer < ActiveRecord::Base

  has_many :bikes

  def shops_without_favorite

    favorite_brand = self.favorite_brand
    brand = Bike.find_by(:brand => favorite_brand)

    if favorite_brand != brand
      shop = Shop.where(:id != brand.shop_id)
    end

    [shop[0].name, shop[1].name]

  end


end