get '/' do
  @user = CLIENT.user
  erb :index
end

post '/' do
  CLIENT.update(params[:tweet_text])
  redirect '/'
end

post '/ajax_tweet' do
  begin
    CLIENT.update(params[:tweet_text])
    "Great success!"
  rescue
    "Error: your tweet was not tweeted you twat."
  end
end
