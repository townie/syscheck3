require_relative 'spec_helper.rb'

describe Rectangle do
  
  it "takes 2 arguements" do
    expect(Rectangle.new(2,1).class).to eq(Rectangle)    
  end

  it "throws an error if  1 out of 2 arguements are not positive" do
    expect{Rectangle.new(2,-1)}.to raise_error
  end

  it "throws an error if  2 out of 2 arguements are not positive" do
    expect{Rectangle.new(-2,-1)}.to raise_error
  end
  it "takes 1 arguement and creates a Rectangle with equal lenght sides AKA a square" do
    expect(Rectangle.new(1).class).to eq(Rectangle)
  end
  it "does not take arguements that are non positive" do
    expect {Rectangle.new("Cards against humanity")}.to raise_error
  end
  
  it "calculates the area" do
    expect(Rectangle.new(2,3).area).to eq(6)
  end

  it "calculates the perimeter" do
    expect(Rectangle.new(2,3).perimeter).to eq(10)
  end

end
