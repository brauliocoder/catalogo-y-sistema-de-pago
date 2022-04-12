class CataloguesController < ApplicationController
  def index
    @products = Product.with_stock
  end
end
