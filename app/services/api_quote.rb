class ApiQuote

  # def initialize(zip)
  #   @zip = zip
  # end
  def all_quotes
    response = HTTParty.get('http://localhost:3001/quotes')

  end
  def get_quote
    response = HTTParty.get('http://localhost:3001/quotes/random')
  end
  
  def post_quote(author,content)
    response = HTTParty.post('http://localhost:3001/quotes?author=' + author + '&content=' + content)
  end
end