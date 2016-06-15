class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validate :user_present
  validate :res_present
  validate :text_present

  after_save :change_rating

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

  def change_rating
    rating_sum = restaurant.comments.inject(0) {|sum, c| sum + c.rating}
    restaurant.rating = rating_sum / restaurant.comments.length
    restaurant.save
  end
end
