require 'rails_helper'
require 'helpers/users_helper_spec'

feature 'user' do  

  include UsersHelper

  context 'User not signed in and on the home page' do
    
    it "should see a 'sign in' link and a 'sign up' link" do
      visit '/games'
      expect(page).to have_link('Sign In')
      expect(page).to have_link('Sign Up')
    end
    
    it "should not see 'sign out' link" do
      visit '/games'
      expect(page).not_to have_link('Sign Out')
    end
  end

  # context "user can sign up" do 
  #   it "should be able to sign up" do
  #     create_user('test@test.com', 'testpassword')
  #     expect(page).to have_content('Welcome test@test.com')
  #     expect(current_path).to eq '/games'
  #   end
  # end

  # context "user can sign in successfully" do
  #   it "should sign in from the homepage" do
  #     create_user('test@test.com', 'testpassword')
  #     click_link 'Sign Out'
  #     sign_in('test@test.com', 'testpassword')
  #     expect(page).to have_content('Welcome test@test.com')
  #     expect(page).to have_link('Sign Out')
  #     expect(current_path).to eq '/games'
  #   end
  # end

  # context "user signed in on the homepage" do
    
  #   before do
  #     visit '/games'
  #     click_link('Sign Up')
  #     fill_in('Email', with: 'test@test.com')
  #     fill_in('Password', with: 'testtest')
  #     click_link('Sign Up')
  #   end

  #   it "should see 'sign out' button" do
  #     visit '/games'
  #     expect(page).to have_link('Sign Out')
  #   end

  #   it "should not see a 'sign in' or a 'sign up' link" do
  #     visit '/games'
  #     expect(page).not_to have_link('Sign In')
  #     expect(page).not_to have_link('Sign Up')
  #   end

  #   it "prompts user to re-submit details" do
  #     visit '/games'
  #     fill_in('Email', with: 'test1@test.com')
  #     fill_in('Password', with: 'testtest')
  #     click_link('Sign In')
  #     expect(page).to have_content('Please re-enter correct details')
  #     expect(current_path).to eq '/games'
  #   end
  # end
end