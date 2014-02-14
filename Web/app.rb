require 'sinatra'
require 'redis'
require 'json'

configure do
	#this runs before the web server starts
	@@redis = Redis.new
	set :bind, "0.0.0.0"
end

get "/" do
	#this will return the file stored at views/index.erb
	#it is encapsulated in the views/layout.erb file 
	erb :index
end

get "/readings" do
	#this path will return json
	content_type :json
	
	#collect the readings from the Redis Server
	#expanded for demonstration
	readings = {}
	readings[:temp] = @@redis.get("temp")
	readings[:light] = @@redis.get("light")
	readings[:readings_time] = Time.now
	readings.to_json
	
	#minimized version
	#{temp: @@redis.get("temp"), light: @@redis.get("light"), readings_time: Time.now}.to_json
end