require 'spec_helper'
require 'rails_helper'

describe UsersController, type: :controller do
  let(:attributes) do
  {
    name: "Englebert Humperdinck",
    email: "englebeezy@crazynames.net",
    password: "mypasswordymcpassword"
  }
  end

  let(:missing_name) { attributes.except(:name)}
  let(:missing_email) { attributes.except(:email)}
  let(:missing_pw) { attributes.except(:password)}


  ##CREATION##
  it "cannot be created without a name" do
    expect(User.new(missing_name)).not_to be_valid
  end

  it "cannot be created without an email" do
    expect(User.new(missing_email)).not_to be_valid
  end

  it "cannot be created without a password" do
    expect(User.new(missing_pw)).not_to be_valid
  end



  ##EDIT CREATED FICTIONAL USER##
  it "cannot find an existing user for updating" do
    expect(User.edit()).not_to be_valid
  end

  ##UPDATE CREATED FICTIONAL USER##
  it "cannot be updated without a name" do
    expect(User.new(missing_name)).not_to be_valid
  end

  it "cannot be updated without an email" do
    expect(User.update(missing_email)).not_to be_valid
  end

  it "cannot be updated with non-matching pw & confirmation pw" do
    expect(User.new(missing_email)).not_to be_valid
  end


  ##DESTROY FICTIONAL CREATED USER##
  it "cannot delete a user that is not the current logged in user" do

  end


end
