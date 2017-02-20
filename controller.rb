require('sinatra')
require('sinatra/contrib/all') if development? # can't remember what this is for...
require('pry')
require('./models/game')
require('json')

get '/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @game = game.play_game()
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end



# get '/rock/scissors' do
#   return "rock wins"
# end

# get '/:hand1/:hand2' do
#   return "#{params[:hand1]} wins"
# end

# get '/:hand1/:hand2' do
#   if "#{params[:hand1]}" == "rock"
#     return "YEAAHHHH"
#   end
# end

# get '/:hand1/:hand2' do
#   if "#{params[:hand1]}" == "#{params[:hand2]}"
#     return "It's a draw!"
#   end
# end
