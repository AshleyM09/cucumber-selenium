Given(/^I am on the Homepage$/) do
  @open_cart_homepage = HomePage.new(@browser)
  @open_cart_homepage.visit_opencart_homepage
end

When(/^I search for '([^"]*)'$/) do |search_phrase|
  @open_cart_homepage.enter_search_phrase(search_phrase)
  @open_cart_homepage.click_search_button
end

Then(/^Open Cart should return result for '([^"]*)'$/) do |actual|
  @open_cart_searchpage = SearchPage.new(@browser)
  expect(@open_cart_searchpage.search_results_exist?(actual)).to be(true)
  @open_cart_searchpage.close
end