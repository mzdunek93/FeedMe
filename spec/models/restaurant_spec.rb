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
  it "requires restaurant description not to be empty" do
    restaurant = Restaurant.new(
      name: "Testautant",
      description: "",
      phone: "123456789", 
      address: "Testing 2")
    expect(restaurant).to be_invalid
  end
  it "requires restaurant phone no. not to be empty" do
    restaurant = Restaurant.new(
      name: "Testaurant",
      description: "This restaurant is supposed to create error",
      phone: "", 
      address: "Testing 2")
    expect(restaurant).to be_invalid
  end
  it "requires restaurant address not to be empty" do
    restaurant = Restaurant.new(
      name: "Testaurant",
      description: "This restaurant is supposed to create error",
      phone: "123456789", 
      address: "")
    expect(restaurant).to be_invalid
  end
end
