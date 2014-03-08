require_relative 'spec_helper.rb'

describe RightTriangle do

  it "takes 2 arguments" do
    expect(RightTriangle.new(4,5).class).to eq(RightTriangle)
  end

  it "takes as the length not the hypotenus" do
    expect(RightTriangle.new(3,4).leg1).to eq(3)
  end

  it "takes 2 only positive arguments" do
    expect{RightTriangle.new(0,2)}.to raise_error
  end

  it "takes only numerical arguments" do
    expect {RightTriangle.new('pancakes', 'butter')}.to raise_error
  end

  it "calcuates hypotenus" do
    expect(RightTriangle.new(3,4).get_hypotenus).to eq(5)
  end

  it "calcuates perimeter" do
    expect(RightTriangle.new(3,4).perimeter).to eq(12)
  end

  it "calcuates area" do
    expect(RightTriangle.new(3,4).area).to eq(6)
  end

end
