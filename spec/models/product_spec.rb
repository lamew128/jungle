require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    
    it 'product should have name' do
      @category = Category.new({"id"=>"1", "name"=>"123"})
      
      expect(Product.new({"id"=>"1", "name"=>nil, "description"=>"1", "category"=>@category, "quantity"=>"1", "image"=>"", "price_cents"=>"1"})).to be_invalid
    end

    it 'product should have price' do
      @category = Category.new({"id"=>"1", "name"=>"123"})
      
      expect(Product.new({"id"=>"1", "name"=>"name", "description"=>"1", "category"=>@category, "quantity"=>"1", "image"=>"", "price_cents"=>nil})).to be_invalid
    end

    it 'product should have quantity' do
      @category = Category.new({"id"=>"1", "name"=>"123"})
      
      expect(Product.new({"id"=>"1", "name"=>"name", "description"=>"1", "category"=>@category, "quantity"=>nil, "image"=>"", "price_cents"=>"1"})).to be_invalid
    end

    it 'product should have category' do
      @category = Category.new({"id"=>"1", "name"=>"123"})
      
      expect(Product.new({"id"=>"1", "name"=>"name", "description"=>"1", "category"=>nil, "quantity"=>"1", "image"=>"", "price_cents"=>"1"})).to be_invalid
    end
  end
end