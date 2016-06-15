class MenuItem < ActiveRecord::Base
  belongs_to :restaurant

	validate :res_present
	validate :price_present
	validate :name_present
  validates :price, :format => { :with => /\A\d+??(?:\.\d{0,2})?\z/ },
:numericality =>{:greater_than => 0}

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

end
