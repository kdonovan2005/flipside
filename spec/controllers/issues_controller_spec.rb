require 'spec_helper'
require 'rails_helper'

describe 'issues index' do
  before(:each) do
    @user = User.create(name: "Test User", email: "Test@test.com", password: "testing")
    @attr = {email: @user.email, name: @user.name }
  end

  it 'visits the issues index page' do
    visit('/issues')
  end

  it 'should have a return code 200' do
    visit '/issues'
    expect(page).to have_content("Open Public Issues")
  end

end
