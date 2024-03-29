require 'spec_helper'

# comment here
describe "Static pages" do
  before {visit root_path}
  
  describe "Home page" do
    it "should have the h1 'Sample App'" do
      # visit '/static_pages/home'
      # visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the base title" do
      # visit '/static_pages/home'
      # visit root_path
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom page title" do
      # visit '/static_pages/home'
      # visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end
  
  describe "Help page" do
    it "should have the h1 'Help'" do
      # visit '/static_pages/help'
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      # visit '/static_pages/help'
      visit help_path
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About page" do
    it "should have the h1 'About Us'" do
      # visit '/static_pages/about'
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About Us'" do
      # visit '/static_pages/about'
      visit about_path
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      # visit '/static_pages/contact'
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end
    it "should have the title 'Contact'" do
      # visit '/static_pages/contact'
      visit contact_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end