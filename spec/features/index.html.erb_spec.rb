require 'spec_helper'
require 'rails_helper'

describe "charges/index.html.erb" do
  context "three lists on the screen" do
    it "should find Successful" do
      visit '/charges/index'
      expect(page).to assert_text("SUCCESSFUL")
    end
    it "should find Disputed" do
      visit '/charges/index'
      expect(page).to assert_text("DISPUTED")
    end
    it "should find Failed" do
      visit '/charges/index'
      page.find('h1', :text => 'FAILED')
      # expect(page).to assert_text("FAILED")
    end

  end

end
