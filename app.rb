require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

 get '/' do
   "Bookmark Manager"
 end

 get '/bookmarks' do
   $bookmarks = Bookmarks.all
   @bookmarks = $bookmarks
   erb :bookmarks
 end

  run! if app_file == $0
end
