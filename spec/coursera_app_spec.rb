# require 'spec_helper'

Capybara.default_driver = :selenium  #:chrome

Capybara.app_host = "https://search-me-jeremy.herokuapp.com/"

describe "Coursera App" do

  describe "visit root" do
    before { visit '/'}

    it "displays 'John Hopkins'" do
      expect(page).to have_content 'John Hopkinds'
    end
  end
end