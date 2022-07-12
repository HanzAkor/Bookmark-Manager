require 'sinatra/base'
require 'sinatra/reloader'
require 'bookmark_list'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    bookmark_list = BookmarkList.new
    bookmark_list.all
  end

  run! if app_file == $0
end
