require 'rubygems'
require 'sinatra'
require 'haml'

get '/hi' do
  "Hello World!"
end

get '/' do
  haml :sweet
end

get '/:word' do
  haml :print, :locals => {:word => params[:word]}
end
