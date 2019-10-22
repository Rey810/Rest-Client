require 'rest-client'

puts 'Youre\'re here to do a Bing search. What would you like to search?'
query = gets.chomp.gsub(" ", "+")
response = RestClient.get "http://bing.com/search?q='#{query}'"

puts "Here is your result"
puts "Response Headers:"
puts response.headers
puts "Response Body:"
puts response.body
puts "Response Cookies:"
puts response.cookies
