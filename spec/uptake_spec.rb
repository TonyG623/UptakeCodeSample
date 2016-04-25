require_relative '../spec_helper'

context 'Uptake' do

  describe 'Home page' do

    before :each do
      uptake_url = 'http://www.uptake.com'
      load_url uptake_url
    end

    it 'loads correctly' do
      home_page = HomePage.new
      # Verify Page Title
      expect(get_page_title).to eql("Uptake \u2013 Analytics for the Industrial Internet")
      # Verify Splash Displayed
      expect(home_page.splash_displayed?).to be true
      # Verify Navigation Displayed
      expect(home_page.navigation_displayed?).to be true
    end

    it 'can navigate to solutions page and verify sections' do
      HomePage.new.click_solutions_link
      solutions_page = SolutionsPage.new
      # Verify Page Title
      expect(get_page_title).to include("Solutions")
      # Get the Section Titles on Page
      section_titles = solutions_page.get_section_titles
      # A list of the expected titles on page
      expected_sections = ['Condition Monitoring','Planning and Forecasting','Fuel and Energy','Supply Chain Optimization','Performance Optimization']
      # Go through each expected section title and make sure it appears on page
      expected_sections.each do |section|
        puts "Verifying that Sections includes #{section}"
        expect(section_titles).to include(section)
      end
    end
  end
end