require('rspec')
require('pry')
require('triangles')

describe('#triangles') do
  it('Program will check if input is not a triangle.') do
    triangle = Triangle.new(2, 2, 10)
    expect(triangle.triangle?).to(eq("not a triangle"))
  end
end
