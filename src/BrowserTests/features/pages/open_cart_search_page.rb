class SearchPage
  include PageObject

  div(:product_thumb, class: 'product-thumb')

  def search_results_exist?(actual)
    product_thumb.include? actual
  end

end