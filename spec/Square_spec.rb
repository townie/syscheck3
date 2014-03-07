require 'rspec'
require_relative 'spec_helper.rb'

describe Square do
  let(:square) {Square.new(side)}
  let(:side){13.1}

  it "takes on 1 arugment" do
    expect(square).to eq(square)
  end

  it "takes ONLY positive numbers, negative test" do
    expect{Square.new(-1)}.to raise_error
  end


  it "takes ONLY positive numbers, zero test" do
    expect{Square.new(0)}.to raise_error
  end


  it "takes ONLY 1 arugment greater than 1" do
    expect{Square.new(4,10)}.to raise_error
  end

   it "takes ONLY 1 arugment less than 1" do
    expect{Square.new()}.to raise_error
  end

  it "calculates the area" do
    expect(square.area).to eq(171.61)
  end

  it "calculates the perimeter" do
      expect(square.perimeter).to eq(52.4)
  end
end
