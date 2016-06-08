require 'spec_helper'

feature "Capybara: Sign up a new person", :js => true do
  # before :each do
  #   guy = User.new(name: "Mitch", email: "guy@funny.com", password: "test")
  #   girl = User.new(name: "Michelina", email: "girl@funny.com", password: "test")
  #   #
  #   # p1 = Picture.create
  #   # mitch.pictures << p1
  # end
  #
  # after :each do
  #   User.destroy_all
  #   Picture.destroy_all
  #   Like.destroy_all
  # end

  scenario "user can sign up" do
    # visit root_path
    # expect(page).to_not have_text("You")
    # page.find(".like-btn").click
    #
    # expect(page).to have_text("You")
  end
end
