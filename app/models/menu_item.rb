class MenuItem < ActiveRecord::Base
  belongs_to :restaurant

	validate :res_present
	validate :price_present
	validate :name_present
	validate :price_is_a_number

	def res_present
		if restaurant.blank?
			errors.add(:restaurant, "can't be empty")
		end
	end
	
  def name_present
    if name.blank?
      errors.add(:name, "Can't be empty")
    end
  end
  
  def price_present
    if price.blank?
      errors.add(:price, "Can't be empty")
    end
  end
  
  def price_is_a_number
    if price.to_f.to_s != self.to_s && price.to_i.to_s != self.to_s
      errors.add(:price, "must be a number")
    end
  end
  
end
