require "pry"
require "HTTParty"
require "sinatra"
require "sinatra/reloader"




def get_movies(search)
  HTTParty.get('http://omdbapi.com/?s=' + search)
end

def movie_info(movie)
  HTTParty.get('http://omdbapi.com/?t=' + movie)
end



get "/" do

  @search_results = params[:search]
    if @search_results
    @search_raw = get_movies @search_results
    @title_array = @search_raw["Search"].collect { |t| "#{t["Title"] }" }
  end



  erb :index

end

get "/movie/*" do
  @movie = params[:splat][0]
  if @movie
    @movie_raw = movie_info @movie
    @title = @movie_raw["Title"]
    @year = @movie_raw["Year"]
    @director = @movie_raw["Director"]
    @runtime = @movie_raw["Runtime"]
    @poster = @movie_raw["Poster"]
  end

  erb :index

end



# HTTParty.get('http://omdbapi.com/?s=[MOVIE TITLE HERE] produces a hash
# This hash has three keys
# Search is a key with a value that is an array containing hashes of all results
# totalResults is the total number of keys in all of the hashes in the search array
# Response has "True" or "False" based on whether any movies were found

# result["Search"].collect { |t| "#{t["Title"] }" }
