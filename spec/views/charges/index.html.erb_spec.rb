require 'spec_helper'
require 'rails_helper'

describe "charges/index.html.erb" do
  context "three lists on the screen" do
    it "should find Successful" do
      visit '/charges/index'
      expect(page).to have_content("SUCCESSFUL")
    end
    it "should find Disputed" do
      visit '/charges/index'
      expect(page).to have_content("DISPUTED")
    end
    it "should find Failed" do
      visit '/charges/index'
      expect(page).to have_content("FAILED")
    end

  end

end
