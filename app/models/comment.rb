class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  
  validate :user_present
  validate :res_present
  validate :text_present
  
  def res_present
		if restaurant.blank?
			errors.add(:restaurant, "can't be empty")
		end
	end
	
	def user_present
		if user.blank?
			errors.add(:user, "can't be empty")
		end
	end
	
  def text_present
    if text.blank?
      errors.add(:text, "Can't be empty")
    end
  end
end
