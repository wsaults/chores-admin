require 'rails_helper'

describe "the signin process" do
  # before :each do
  #   User.make(email: 'user@example.com', password: 'password')
  # end

  it "signs me in" do
    visit '/'
    expect(page).to have_content 'Please Sign In'
    within("form") do
      expect(page).to have_field 'Email'
      fill_in 'Email', with: 'user@example.com'
      expect(page).to have_field 'Password'
      fill_in 'Password', with: 'password'
      expect(page).to have_field 'Remember Me'
      expect(page).to have_link 'Login'
    end

    click_link 'Login'
    # expect(page).to have_content 'Success'
    expect(current_path).to eq('/dashboard')
  end
end