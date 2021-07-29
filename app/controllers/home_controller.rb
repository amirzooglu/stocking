class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
      @nothing = "Hey you forget to enter company name"
    elsif params[:ticker]
      @api = StockQuote::Stock.new(api_key: 'pk_02b698fe755e42279cee1fd909170b51')
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
        @error = "Hey that symbol does not exist"
      end
    end
  end
  def about
  end
end
