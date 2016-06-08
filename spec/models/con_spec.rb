require 'spec_helper'
require 'rails_helper'

describe Con do
  let(:attributes) do
  {
    name: "the thing is turrible. just turrible, chuck.",
    weight: 5
  }
  end

  it "is considered valid" do
    expect(Con.new(attributes)).to be_valid
  end

  ## CHECK THAT WEIGHT IS A NUMBER
  it "has a name upon creation"




  it "has a weight upon creation"




  it "has a valid weight that's only a number from 1-5"

end
