class HomePage
  include PageObject

  text_field(:search_box, name:'search')
  div(:search, id: 'search')
  button(:search_btn, class: ["btn", "btn-default", "btn-lg"])

  def visit_opencart_homepage
    @browser.goto 'http://opencart.abstracta.us/'
  end

  def enter_search_phrase(phrase)
    self.search_box = phrase
  end

  def click_search_button
    self.search_btn
  end

  def close
    @browser.close
  end

end