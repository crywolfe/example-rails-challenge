require 'spec_helper'
require 'rails_helper'

describe "charges/index.html.erb" do
  before :each do
    visit '/charges'
  end

  context "three lists on the screen" do
    it "should find Successful" do
      expect(page).to have_content("SUCCESSFUL")
    end
    it "should find Disputed" do
      expect(page).to have_content("DISPUTED")
    end
    it "should find Failed" do
      expect(page).to have_content("DISPUTED")
    end

  end

end
