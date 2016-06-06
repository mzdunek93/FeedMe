class MenuItem < ActiveRecord::Base
  belongs_to :restaurant

	validate :res_present
	
	validate :name_present

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

end
