require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  before :each do
    @testRes = Restaurant.create!(
      name: "TempRes", 
      description:"Restaurant for testing", 
      phone:"12 345 67 89",
      address:"Test 1, Beta City")
  end
  pending "add some examples to (or delete) #{__FILE__}"
  it "requires menu item to have name" do
    menuItem = MenuItem.new(
      name:"", 
      price: 10, 
      restaurant: @testRes)
    expect(menuItem).to be_invalid 
  end    
end
