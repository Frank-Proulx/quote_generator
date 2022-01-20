class QuotesController < ApplicationController

  def index
    quote_object = ApiQuote.new
    @all_quotes = quote_object.all_quotes()
    render :index
  end

  def new
    @quote = ApiQuote.new
    render :new
  end

  def create
    quote = ApiQuote.new()
    api_params = params[:api_quote]
    api_call = quote.post_quote(api_params[:author],api_params[:content])
    @all_quotes = quote.all_quotes
    if api_call['author'] != api_params[:author]
      redirect_to new_quote_path
    else
      render :index
    end
  end

  def edit
    # Code for edit album form goes here.
  end

  def show
    # Code for showing a single album goes here.
  end

  def update
    # Code for updating an album goes here.
  end

  def destroy
    # Code for deleting an album goes here.
  end

end