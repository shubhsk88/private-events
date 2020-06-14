require 'spec_helper'

RSpec.describe 'User signs up' ,type: :features do
  
 
  scenario 'with valid email and password' do
    visit '/signup'
    sign_up_with 'valid@example.com', 'password'

    expect(page).to have_content('Sign out')
  end

  scenario 'with invalid email' do
    visit '/signup'
    sign_up_with 'invalid_email', 'password'

    expect(page).to have_content('Sign in')
  end

  scenario 'with blank password' do
    visit '/signup'
    sign_up_with 'valid@example.com', ''

    expect(page).to have_content('Sign in')
  end

  def sign_up_with(email, password)
    
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign up'
  end
end