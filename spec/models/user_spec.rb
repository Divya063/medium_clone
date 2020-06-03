require 'rails_helper'

RSpec.describe User, type: :model do
  describe "following and unfollowing other users" do
   
    let(:luke) {create(:user, username: "Luke Skywalker")}
    let(:solo) {create(:user, username: "solo Skywalker")}

    
    it "adds relationships between the two users" do
      luke.follow(solo)
      expect(luke.following?(solo)).to be_truthy

      luke.unfollow(solo)
      expect(luke.following?(solo)).to be_falsy

    end

  end
end
