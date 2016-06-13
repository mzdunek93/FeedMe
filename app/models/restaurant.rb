##
# The class representing the Restaurant model

class Restaurant < ActiveRecord::Base
	mount_uploader :logo, LogoUploader

	validate :name_present
	validate :description_present
	validate :phone_present
	#validate :phone_is_a_number
	validates_format_of :phone, with: /\A[0-9 ]*\z/i, on: :create
	validate :address_present

	has_many :menu_items
  has_many :comments
	belongs_to :user

  ##
  # Validator for the name column
  # Returns error if the name is empty

  def name_present
    if name.blank?
      errors.add(:name, "Can't be empty")
    end
  end

  ##
  # Validator for the description column
  # Returns error if the description is empty

  def description_present
    if description.blank?
      errors.add(:description, "Can't be empty")
    end
  end

  ##
  # Validator for the phone column
  # Returns error if the phone is empty

  def phone_present
    if phone.blank?
      errors.add(:phone, "Can't be empty")
    end
  end
  
  ##
  # Validator for the phone column
  # Returns error if the phone is not a number

  def phone_is_a_number
    if phone.to_f.to_s != phone.to_s && phone.to_i.to_s != phone.to_s
      errors.add(:phone, "Must be a number")
    end
  end

  ##
  # Validator for the address column
  # Returns error if the address is empty

  def address_present
    if address.blank?
      errors.add(:address, "Can't be empty")
    end
  end

	##
	# Search method
	# Searches for a restaurant with a matching name

	def self.search(query)
		where("name LIKE ?", "%#{query}%")
	end	

end
