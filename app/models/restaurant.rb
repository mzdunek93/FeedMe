class Restaurant < ActiveRecord::Base
	mount_uploader :logo, LogoUploader

	validates :name, presence: true
	validates :description, presence: true
	validates :phone, presence: true
	validates :address, presence: true
end
