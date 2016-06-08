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

  #create a user just for the test
  # User.new(attributes)

  ##EDIT CREATED FICTIONAL USER##
  # it "cannot find an existing user for updating" do
  #   binding.pry
  #   expect(User.find(params[:id]).name).to eq("Englebert Humperdinck")
  # end

  ##UPDATE CREATED FICTIONAL USER##
  it "cannot be updated without a name"
  # do
  #
  # end
  #
  it "cannot be updated without an email"
  # do
  #
  # end
  #
  it "cannot be updated with non-matching pw & confirmation pw"
  # do
  #   
  # end
  #

  ##DESTROY FICTIONAL CREATED USER##
  it "cannot delete a user that is not the current logged in user"
  # do
  #
  # end


end
