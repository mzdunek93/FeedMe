##
# The class representing the Restaurant model

class Restaurant < ActiveRecord::Base
	mount_uploader :logo, LogoUploader

	validates :name, presence: true
	validates :description, presence: true
	validates :phone, presence: true
	validates :address, presence: true

  ##
  # Validator for the name column
  # Returns error if the name is empty
  
  def name_present
    if name == ''
      errors.add(:name, "Can't be empty")
    end
  end

  ##
  # Validator for the description column
  # Returns error if the description is empty

  def description_present
    if description == ''
      errors.add(:description, "Can't be empty")
    end
  end

  ##
  # Validator for the phone column
  # Returns error if the phone is empty

  def phone_present
    if phone == ''
      errors.add(:phone, "Can't be empty")
    end
  end

  ##
  # Validator for the address column
  # Returns error if the address is empty

  def address_present
    if address == ''
      errors.add(:address, "Can't be empty")
    end
  end
end
