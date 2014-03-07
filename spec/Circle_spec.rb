require_relative 'spec_helper.rb'


describe Circle do
  
  #math nerding it out
  let(:unit_circle) {Circle.new(1)}

  it "takes only 1 argument as radius" do
    expect(Circle.new(2).class).to eq(Circle)
  end

  it "takes only 1 that is positive argument as radius" do
    expect{Circle.new(2,3)}.to raise_error
  end    

  #DONT WE ALL LOVE PI
  it "takes only 1 that is not anything else as radius" do
    expect{Circle.new('yummy pi')}.to raise_error
  end 

  #technically a circle of size 0 is a point which is a circle 
  #but we will not allow it for s
  it "takes only 1 non-negative argument as radius" do
    expect{Circle.new(-1)}.to raise_error
  end

  it "can check the radius" do
    expect(unit_circle.radius).to eq(1)
  end


  it "calculates the diameter" do
    expect(unit_circle.diameter).to eq(2)
  end


  it "calculates the circumference" do
    expect(unit_circle.circumference).to eq(6.28319)
  end

  it "calculates an area numerical response" do
    expect(unit_circle.area).to eq(3.14159)
  end

  it "calculates an area word response" do
    expect(unit_circle.area(true)).to eq("PI 1in^2" )
  end

  it "calculates an area word response" do
    expect(Circle.new(5).area(true)).to eq("PI 5in^2" )
  end


end
