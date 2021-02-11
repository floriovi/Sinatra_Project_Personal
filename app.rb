require "sinatra"

get '/' do
  "hello!"
end

get '/secret' do
  "Hello, how are you man?"
end

get '/random-cat' do
  @random_names = ["Vincent", "Vanessa", "Rosa"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @random_names = params[:name]
  erb(:index)
end

get '/cat-form' do
  @random_names = params[:name]
  erb(:cat_form)
end