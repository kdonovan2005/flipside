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

  it "is considered valid" do
    expect(User.new(attributes)).to be_valid
  end
end


########example########

#### CLASS ####
# class Monster < ActiveRecord::Base
#   validates :name, presence: true
#   validates :size, inclusion: { in: ["tiny", "average", "like, REALLY big"] }
#   validates :taxonomy, format: { with: /\A[a-zA-Z]+ [a-zA-Z]+\z/,
#     message: "must include genus and species, like 'Homo Sapien'" }
# end
#
#
#### TEST ####
# describe Monster do
#   let(:attributes) do
#     {
#       name: "Dustwing",
#       size: "tiny",
#       taxonomy: "Abradacus Nonexistus"
#     }
#   end
#
#   it "is considered valid" do
#     expect(Monster.new(attributes)).to be_valid
#   end
# end
