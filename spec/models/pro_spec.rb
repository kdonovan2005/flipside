require 'spec_helper'
require 'rails_helper'

describe Pro do
  let(:attributes) do
  {
    name: "the thing is great",
    weight: 4
  }
  end

  it "is considered valid" do
    expect(Pro.new(attributes)).to be_valid
  end

  ## CHECK THAT WEIGHT IS A NUMBER
  it "has a name upon creation"




  it "has a weight upon creation"




  it "has a valid weight that's only a number from 1-5"


end
