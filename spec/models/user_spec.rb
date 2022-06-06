require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    
    it 'vaild user' do
      
      expect(User.new({"name"=>"1", "email"=>"1@1", "password"=>"11111111", "password_confirmation"=>"11111111"})).to be_valid
    end

    it 'password should match' do
      expect(User.new({"name"=>"111", "email"=>"1@1", "password"=>"11111111", "password_confirmation"=>"22222222"})).to be_invalid
    end

    it 'password length should be >=8' do
      expect(User.new({"name"=>"111", "email"=>"1@1", "password"=>"1", "password_confirmation"=>"1"})).to be_invalid
    end

    it 'name should exist' do
      expect(User.new({"name"=>nil, "email"=>"1@1", "password"=>"11111111", "password_confirmation"=>"11111111"})).to be_invalid
    end

    it 'email should exist' do
      expect(User.new({"name"=>"111", "email"=>nil, "password"=>"11111111", "password_confirmation"=>"11111111"})).to be_invalid
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    
    it 'invaild user' do

      expect(User.authenticate_with_credentials("1@1" , "11111111")).to be_nil
    end
  end
end
