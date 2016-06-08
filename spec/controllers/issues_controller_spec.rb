require 'spec_helper'
require 'rails_helper'

describe 'issues index' do
  it 'visits the issues show page' do
    visit('/issues')
  end

  it 'should have a return code 200' do
    visit '/issues'
    expect(page).to have_content("Open Public Issues")
  end

  it "creates a new issue" do
    expect{
      issue :create, { :name => "New Issue" }
    }.to change(Issue,:count).by(1)
  end

  it "redirects to the new issue" do
    issue :create, { :first_name => "New Issue" }
    expect(response).to redirect_to Issue.last
  end
end
