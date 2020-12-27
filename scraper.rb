require 'nokogiri'
require 'open-uri'

# The line below  Fetches and parses an HTML document
doc = Nokogiri::HTML(URI.open('http://jadud.com/'))
## TASK: Find all of the links in a webpage.
doc.css('a').each do |link|
  puts link.content
end
## TASK: Check the status of a single webpage. (Part one)
open("https://jadud.com/") {|f|
  p f.base_uri
  p f.status
}

## TASK: Check the status of a single webpage. Allows user to enter url.
puts "Which URL would you like to check? (Please include HTTP in the URL)"
user_input = gets.chomp
open("#{user_input}") {|f|
  p f.status
}
