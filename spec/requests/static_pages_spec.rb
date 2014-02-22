require 'spec_helper'

describe "StaticPages" do
  subject { page }

#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end

  describe "Home Page" do
    before { visit '/static_pages/home' }

    it { should have_content('Sample App') }
    it { should_not have_title('| Home') }
    it { should have_title('Huayang\'s First RoR App') }
  end

  describe "Help Page" do
    before { visit '/static_pages/help' }

    it { should have_content('Help') } 
    it { should have_title('Huayang\'s First RoR App | Help') }
  end

  describe "About page" do
    before { visit '/static_pages/about' }

    it { should have_content('About Us') }
    it { should have_title('Huayang\'s First RoR App | About') }
  end
end
