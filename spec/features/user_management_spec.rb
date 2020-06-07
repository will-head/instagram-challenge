require 'rails_helper'

RSpec.feature 'User login', type: :feature do
  scenario 'with a valid email and password' do

    visit home_index_url
    # user = User.create(email: 'test@example.com', password: "password", password_confirmation: "password") ## uncomment if not using FactoryBot
    # sign_in user
    click_link 'Log in'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit home_index_url
    # expect(page).to have_content('Log out')
  end
end
