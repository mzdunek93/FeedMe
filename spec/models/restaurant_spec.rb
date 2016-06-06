require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "requires restaurant name not to be empty" do
    restaurant = Restaurant.new(
      name: "",
      description: "This restaurant is supposed to create error",
      phone: "123456789", 
      address: "Testing 2")
    expect(restaurant).to be_invalid
  end
end
