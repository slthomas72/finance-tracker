class StocksController < ApplicationController

  def search
    @stock = Stock.new_from_lookup(params[:stock])
    render 'users/my_portfolio'
  end

  def self.strip_commas(number)
    number.gsub(",", "")
  end

end