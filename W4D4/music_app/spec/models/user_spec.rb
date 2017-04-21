require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  describe "validate the presence of email" do
    it { should validate_presence_of(:email) }
  end

  describe "validate presnce of password_digest" do
    it { should validate_presence_of(:password_digest) }
  end

  describe "validate password length > 6" do
    it { should validate_length_of(:password).is_at_least(6)}
  end

  describe "Test Class Methods" do
    subject(:user) {User.new(email: "bryant", password: "password")}
    describe "#is_password?" do
      it "should check if the password is correct" do
        expect(user.is_password?("password")).to be true
      end
    end
    describe "#reset_session_token!" do
      it "should reset the session token" do
        token = user.session_token
        user.reset_session_token!
        expect(user.session_token).to_not eq(token)
      end
    end
    describe "::find_by_credentials" do
      it "should find the user by email and password" do
        user.save
        expect(User.find_by_credentials("bryant","password")).to eq(user)
      end
    end

  end


end
