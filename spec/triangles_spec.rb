require('rspec')
require('pry')
require('triangles')

describe('#triangles') do
  it('Program will check if input is not a triangle.') do
    triangle = Triangle.new(4, 2, 10)
    expect(triangle.triangle?).to(eq("Not a triangle"))
  end
  it('Program will check if input is a equilateral triangle.') do
    triangle = Triangle.new(2, 2, 2)
    expect(triangle.triangle?).to(eq("Equilateral"))
  end
  it('Program will check if input is a scalene triangle.') do
    triangle = Triangle.new(4, 2, 3)
    expect(triangle.triangle?).to(eq("Scalene"))
  end
  it('Program will check if input is a isosceles triangle.') do
    triangle = Triangle.new(4, 4, 3)
    expect(triangle.triangle?).to(eq("Isosceles"))
  end
end
