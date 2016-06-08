require 'spec_helper'
require 'rails_helper'

describe User do
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

  it "cannot be created without a name" do
    expect(User.new(missing_name)).not_to be_valid
  end

  it "cannot be created without an email" do
    expect(User.new(missing_email)).not_to be_valid
  end

  it "cannot be created without a password" do
    expect(User.new(missing_pw)).not_to be_valid
  end
end
