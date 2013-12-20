require "sinatra"
require "sinatra/activerecord"
require "bundler"
Bundler.require

set :database, "sqlite3:///blog.db"


class Post < ActiveRecord::Base

	get "/" do
  		@posts = Post.order("created_at DESC")
  		erb :"posts/index"
	end

end