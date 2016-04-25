require_relative 'base_page'

# Every page object should inherit from BasePage
class HomePage < BasePage

  SPLASH_VIDEO = {css: 'div.splash'}
  MENU_NAVIGATION = {id:'menu-primary-nav'}
  APPROACH_LINK = {css: "a[href$='approach/']"}
  PLATFORM_LINK = {css: "a[href$='platform/']"}
  SOLUTIONS_LINK = {css: "a[href$='solutions/']"}

  # Verifies that splash video is displayed
  #
  def splash_displayed?
    displayed? SPLASH_VIDEO
  end

  # Verifies that navigation menu is displayed
  def navigation_displayed?
    displayed? MENU_NAVIGATION
  end

  # Clicks Solutions Link
  def click_solutions_link
    click SOLUTIONS_LINK
  end

  # Clicks Platform Link
  def click_platform_link
    click PLATFORM_LINK
  end

  # Clicks Approach Link
  def click_approach_lnik
    click APPROACH_LINK
  end

end