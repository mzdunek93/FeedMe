##
# The class representing the User model

class User < ActiveRecord::Base
  enum role: [:user, :restaurant, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_one :restaurant
  has_many :comments
  ##
  # Function setting the default role executed immediately after initializing the object
  # Sets the role to user unless otherwise set

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
