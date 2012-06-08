require 'sinatra'
require 'haml'
require 'sass'
require 'coffee-script'

def imgs
  img_paths = Dir['./public/img/*.*'].shuffle
  img_paths.map { |path| 'img' + path.split('img').last }
end

get '/style.css' do
  sass :style, style: :expanded
end

get '/app.js' do
  coffee :app
end

get '/' do
  @first, @second, @third = imgs
  haml :index
end

# post '/' do
#   File.open('./results.txt', 'a') do |f|
#     f.write(params['name'] + "\n")
#   end
# end