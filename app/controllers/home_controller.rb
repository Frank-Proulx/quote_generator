class HomeController < ApplicationController
  def index
    quote_object = ApiQuote.new()
    @random_quote = quote_object.get_quote()
    
    render :index
  end
end