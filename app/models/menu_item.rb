class Menu_Item < ActiveRecord::Base
  belongs_to :restaurant

	validate :res_present
	

	def res_present
		if restaurant.blank?
			errors.add(:restaurant, "can't be empty")
		end
	end
end
