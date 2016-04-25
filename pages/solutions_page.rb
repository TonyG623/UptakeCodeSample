require_relative 'base_page'

# Every page object should inherit from BasePage
class SolutionsPage < BasePage
  SECTION_TITLES = {css:'h2.block-title'}

  # Gets the section titles on the page
  def get_section_titles
    find_elements(SECTION_TITLES).collect(&:text)
  end
end