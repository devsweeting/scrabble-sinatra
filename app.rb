require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble.rb')
require('pry')

get ('/') do
  @description = "This app will return the scrabble score for a word"
  erb(:input)
end

get ('/output') do
  @word = params['word']
  @score = scrabble_score(@word)
  erb(:output)
end
