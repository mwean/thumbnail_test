require 'sinatra'
require 'haml'
require 'sass'
require 'coffee-script'

def imgs
  img_paths = Dir['./public/img/*.*'].shuffle
  img_paths.sample(3).map { |path| 'img' + path.split('img').last }
end

BIG_LIST_OF_IMAGE_SETS = {
  1 => ['current', 'new_best', 'worst'],
  2 => ['worst', 'current', 'new_best']
}

get '/images/:id' do
  @first, @second, @third = BIG_LIST_OF_IMAGE_SETS[params[:id].to_i]
  haml :index
end

get '/choose/:choice' do
  # Post to Amazon here...
  "Yay, you picked #{params[:choice]}!"
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