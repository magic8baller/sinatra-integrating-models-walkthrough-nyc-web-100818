require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #create new instances of TextAnalyzer in controller

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    #feed data => new instance of TextAnalyzer
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
