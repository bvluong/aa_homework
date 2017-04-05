require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Bryant") }
  subject(:icecream) { Dessert.new("Ice Cream",10,chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(icecream.type).to eq("Ice Cream")
    end
    it "sets a quantity" do
      expect(icecream.quantity).to eq(10)
    end
    it "starts ingredients as an empty array" do
      expect(icecream.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("Cookies","10",chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      icecream.add_ingredient("peanuts")
      expect(icecream.ingredients).to eq(["peanuts"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      icecream.add_ingredient("cream")
      icecream.add_ingredient("milk")
      icecream.add_ingredient("peanuts")
      expect(icecream.ingredients).to eq(["cream","milk","peanuts"])
      icecream.mix!
      expect(icecream.ingredients).not_to eq(["cream","milk","peanuts"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      icecream.eat(2)
      expect(icecream.quantity).to eq(8)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect {icecream.eat(12)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Bryant the Great Baker")
      expect(icecream.serve).to eq("Chef Bryant the Great Baker has made 10 Ice Creams!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(icecream)
      icecream.make_more
    end
  end
end
