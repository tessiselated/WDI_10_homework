require "pry"
require "HTTParty"
require "sinatra"
require "sinatra/reloader"




def get_movie(movie)
  HTTParty.get('http://omdbapi.com/?t=' + movie)
end


get "/" do
  erb :index
end

# get "/" do
#
#   @movie = params[:movie]
#     if @movie
#     @movie_raw = get_stock_quote @movie_raw
#     @title = @movie_raw["Title"]
#     @year = @movie_raw["Year"]
#     @director = @movie_raw["Director"]
#     @runtime = @movie_raw["Runtime"]
#   end
#
#
#   erb :index
#
# end
