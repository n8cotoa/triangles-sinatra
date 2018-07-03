require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('process user entry and display what kind of triangle it is') do
    visit('/')
    fill_in('side1', :with => '2')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '4')
    click_button('Go!')
    expect(page).to have_content("Scalene")
  end
end
