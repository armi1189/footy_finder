require 'rails_helper'

module UsersHelper
  def create_user(email, password)
    visit '/'
    click_link 'Sign Up'
    fill_in('Email', with: email)
    fill_in('Password', with: password)
    fill_in('Password confirmation', with: password)
    click_button('Sign up')
  end

  def sign_in(email, password)
    click_link 'Sign In'
    fill_in('Email', with: email)
    fill_in('Password', with: password)
    click_button 'Log in'
  end
end
