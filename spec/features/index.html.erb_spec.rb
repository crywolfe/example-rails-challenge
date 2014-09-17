require 'spec_helper'
require 'rails_helper'

describe "charges/index.html.erb" do
  before :each do
    visit '/charges/index'
  end

  context "three lists on the screen" do
    it "should find Successful" do
      expect(page).to assert_text("SUCCESSFUL")
    end
    it "should find Disputed" do
      expect(page).to have_content("DISPUTED")
    end
    it "should find Failed" do
      page.find('h1', :text => 'FAILED')
      # expect(page).to assert_text("FAILED")
    end

  end

end
