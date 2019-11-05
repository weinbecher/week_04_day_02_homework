require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/film.rb')
also_reload('./models/*')



get '/films' do
  @films = Film.all()
  erb( :"films/index" )
end


get '/films/:id' do
  id = params[:id]
  @film = Film.find_by_id(id)
  erb( :"films/film" )

end



# <!-- Make the film titles **anchor tags** that link to a view of the individual film details. -->
