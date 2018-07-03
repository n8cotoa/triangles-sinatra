require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')
require('pry')

get('/') do
  @description = 'This application will check if lengths add up to a triangle.'
  erb(:input)
end

post('/output') do
  @l1 = params.fetch('side1')
  @l2 = params.fetch('side2')
  @l3 = params.fetch('side3')
  triangle = Triangle.new(@l1, @l2, @l3)
  @triangle_output = triangle.triangle?
  erb(:output)
end
