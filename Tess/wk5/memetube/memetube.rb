require "sinatra"
require "sinatra/reloader"
require "pry"
require "active_record"
require "sinatra/activerecord"
require "pg"

require_relative "./models/video"


get "/" do
  @videos = Video.all

  erb :index
end

get "/videosubmit" do
  @videos = Video.all

  erb :index


end

post "/videosubmit" do
  @videos = Video.all
  @video = Video.new(@params)
  if @video.save
    erb :index
  else
    pass
  end
  redirect to('/')
end

get "/video/:id" do

  begin
    @video = Video.find(@params["id"])

    erb :video
  rescue
    "There was no video with the id #{@params["id"]}"

  end

end

get "/video/*/edit" do
  @video = Video.find(@params[:splat].first)
  erb :video
end


post "/video/*/edit" do

  @video = Video.find(@params[:splat].first)

  @video.title = @params["title"]
  @video.url = @params["url"]
  @video.description = @params["description"]
  @video.genre = @params["genre"]
  @video.save
  redirect to('/')
end
