require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have h1 home" do
      visit "/static_pages/home"
      page.should have_selector("h1", :text => "Home")
    end
    it "should have the title home" do
      visit "/static_pages/home"
      page.should have_selector("title", :text => "Ruby on Rails tutorial Sample App")
    end
  end

  describe "Help page" do
    it "should have the h1 Help" do
      visit "/static_pages/help"
      page.should have_selector("h1", :text => "Help")
    end
    it "should have the title Help" do
      visit "/static_pages/help"
      page.should have_selector("title", :text => "Ruby on Rails tutorial Sample App")
    end
  end

  describe "About Us page" do
    it "should have the h1 About Us" do
      visit "/static_pages/about"
      page.should have_selector("h1", :text => "About")
    end
    it "should have the title About Us" do
      visit "/static_pages/about"
      page.should have_selector("title", :text => "Ruby on Rails tutorial Sample App")
    end
  end
end
