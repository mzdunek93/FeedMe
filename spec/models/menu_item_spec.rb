require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  before :each do
    @testRes = Restaurant.create!(
      name: "TempRes", 
      description:"Restaurant for testing", 
      phone:"12 345 67 89",
      address:"Test 1, Beta City")
  end
  it "allows users to store information about menu item" do
    menuItem = MenuItem.new(
      name: "Tasty Treat",
      price: 9.99, 
      restaurant: @testRes)
    expect(menuItem.name).to match "Tasty Treat"
  end
  it "requires menu item to have name" do
    menuItem = MenuItem.new(
      name:"", 
      price: 10, 
      restaurant: @testRes)
    expect(menuItem).to be_invalid 
  end
  it "requires menu item to have price" do
    menuItem = MenuItem.new(
      name:"Error Item",  
      restaurant: @testRes)
    expect(menuItem).to be_invalid 
  end
  it "requires price to be a number" do
    menuItem = MenuItem.new(
      name:"Error Item",  
      price: "abc",
      restaurant: @testRes)
    expect(menuItem).to be_invalid 
  end
  it "requires menu item to be assigned to a restaurant" do
    menuItem = MenuItem.new(
      name:"", 
      price: 10)
    expect(menuItem).to be_invalid 
  end    
end
