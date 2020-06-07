require 'rails_helper'

RSpec.describe "Sessions" do
  it "signs user in" do
    user = User.create(email: 'test@example.com', password: "password", password_confirmation: "password") ## uncomment if not using FactoryBot
    sign_in user
    get root_path
    expect(response).to render_template(:index) # add gem 'rails-controller-testing' to your Gemfile first.
  end

  it "signs user in and out" do
    user = User.create(email: 'test@example.com', password: "password", password_confirmation: "password") ## uncomment if not using FactoryBot
    sign_in user
    get root_path
    expect(response).to render_template(:index) # add gem 'rails-controller-testing' to your Gemfile first.
    
    sign_out user
    get root_path
    expect(response).to render_template(:index) # add gem 'rails-controller-testing' to your Gemfile first.
  end
end
