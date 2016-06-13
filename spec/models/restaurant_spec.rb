require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "allows users to store information about restaurant" do
    restaurant = Restaurant.new(
      name: "Test Restaurant",
      description: "This restaurant is supposed to be created successfully",
      phone: "123456789", 
      address: "Testing 2")
    expect(restaurant.name).to match "Test Restaurant"
  end
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
  it "requires restaurant phone no. to be a number" do
    restaurant = Restaurant.new(
      name: "Testaurant",
      description: "This restaurant is supposed to create error",
      phone: "abcdef", 
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
