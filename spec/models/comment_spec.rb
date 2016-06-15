require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    @testRes = Restaurant.create!(
      name: "TempRes",
      description:"Restaurant for testing",
      phone:"12 345 67 89",
      address:"Test 1, Beta City")
    @testUser = User.create!(
      email: "user@test.com",
      name: "test",
      password: "password",
      password_confirmation: "password"
    )
  end
  it "allows user to post comment about a restaurant" do
    com = Comment.new(
    text: "Tasty restaurant",
    user: @testUser,
    restaurant: @testRes)
    expect(com.text).to match "Tasty restaurant"
  end
  it "requires comment to be assigned to user" do
    com = Comment.new(
    text: "Tasty restaurant",
    restaurant: @testRes)
    expect(com).to be_invalid
  end
  it "requires comment to be assigned to restaurant" do
    com = Comment.new(
    text: "Tasty restaurant",
    user: @testUser)
    expect(com).to be_invalid
  end
  it "requires comment to have text" do
    com = Comment.new(
    text: "",
    user: @testUser,
    restaurant: @testRes)

  end
end
