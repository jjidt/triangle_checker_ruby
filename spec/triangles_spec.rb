require "rspec"
require "triangles"

describe "Triangle" do
  it "is initialized with 3 side lengths" do
    test_triangle = Triangle.new(1,2,3)
    test_triangle.should be_an_instance_of Triangle
  end

  it "should test whether the inputted sides can construct a triangle" do
    test_triangle = Triangle.new(4,4,7)
    test_triangle.is_triangle?.should eq true
  end

  it "identifies an equilateral triangle" do
    test_triangle = Triangle.new(5,5,5)
    test_triangle.type.should eq "equilateral"
  end

  it "identifies a isosceles triangle" do
    test_triangle = Triangle.new(5,5,7)
    test_triangle.type.should eq "isosceles"
  end

  it "identifies a scalene triangle" do
    test_triangle = Triangle.new(5,6,7)
    test_triangle.type.should eq "scalene"
  end
end
