require 'spec_helper'

describe "StaticPages" do
  subject { page }
  describe "Home Page" do
    before {visit root_path}
    it { should have_selector("h1", :text => "Welcome to Sample App") }
    it { should have_selector("title", :text => "Ruby on Rails tutorial Sample App | Home") }
  end

  describe "Help page" do
    before {visit help_path}
    it {should have_selector("h1", :text => "Help")}
    it {should have_selector("title", :text => "Ruby on Rails tutorial Sample App | Help")}
  end

  describe "About Us page" do
    before {visit about_path}
    it {should have_selector("h1", :text => "About")}
    it {should have_selector("title", :text => "Ruby on Rails tutorial Sample App | About")}
  end

  describe "Contact page" do
    before {visit contact_path}
    it {should have_selector("h1", :text => "Contact")}
    it {should have_selector("title", :text => "Ruby on Rails tutorial Sample App | Contact")}
  end
end
