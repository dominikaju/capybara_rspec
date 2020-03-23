require 'spec_helper'

RSpec.describe "Sign in", type: :feature do
    it "With invalid credentails" do
        visit('/login')
        fill_in 'login', :with => 'test'
        fill_in 'password', :with => 'password'
        click_button 'Sign in'
        expect(page).to have_content 'Incorrect username or password.'
    end
end