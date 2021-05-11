# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts "Cleaning up database..."
Bookmark.destroy_all
Movie.destroy_all
puts "Database cleaned"

url = "http://tmdb.lewagon.com/movie/top_rated"
10.times do |i|

  puts "Importing movies from page #{i + 1}"
  movies = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
  movies.each do |movie|
    puts "Creating #{movie['title']}"
    Movie.create(
      title: movie['title'],
      overview: movie['overview'],
      rating: movie['vote_average'],
      poster_url: "https://image.tmdb.org/t/p/original#{movie['backdrop_path']}"
    )
  end
end
puts "Movies created"
