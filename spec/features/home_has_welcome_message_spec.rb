require 'rails_helper'

RSpec.feature 'Homepage has a welcome message', type: :feature do
  scenario 'they visit the homepage' do
    visit '/'
    expect(page).to have_content('Welcome to (f)Instagram!')
  end
end
