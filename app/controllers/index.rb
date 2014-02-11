get '/' do
  @user = CLIENT.user
  erb :index
end

post '/' do
  CLIENT.update(params[:tweet_text])
  redirect '/'
end
