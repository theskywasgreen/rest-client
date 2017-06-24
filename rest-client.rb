require 'rest-client'

bing =

puts "enter search term for Bing"
input = gets.chomp

input = input.split(" ")
input = input.join("+")

response = RestClient.get "https://www.bing.com/search?q=#{input}"

puts "\n Status code: #{response.code}\n\n"
puts "\n Headers: #{response.headers}\n\n"
puts "\n Cookies: #{response.cookies}\n\n"
