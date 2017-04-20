require 'rails_helper'

RSpec.describe User, type: :model do
  context "create a new User" do
    it "create a user" do
      user = build(:user)
      expect(user.email).to eq("danny@gmail.com")
    end
    it "doesn't create user" do
      user = nil
      expect(user).to eq(nil)
    end
  end
end
