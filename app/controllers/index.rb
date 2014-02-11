get '/' do
  @user = CLIENT.user
  erb :index
end

post '/' do
  CLIENT.update(params[:tweet_text])
  redirect '/'
end

post '/ajax_tweet' do
  p params
  CLIENT.update(params[:tweet_text])
  "Great success".to_json
end
