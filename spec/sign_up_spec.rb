require 'spec_helper'

RSpec.describe "Sign up", type: :feature do
    it "With invalid e-mail" do
        visit('/join')
        fill_in 'user[email]', :with => 'test'
        expect(page).to have_content 'Email is invalid or already taken'
    end
end