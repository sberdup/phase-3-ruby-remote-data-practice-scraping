require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
puts doc.css(".footer-address").text.strip

footers = doc.css(".footer-list.list-stacked")
footers.each do |item|
    puts item.text.strip
end