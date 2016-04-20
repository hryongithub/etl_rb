#!//usr/bin/env ruby

require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'csv'

### document = Nokogiri::HTML(input)
document = File.open("invoices.html") { |f| Nokogiri::XML(f) }
### document = Nokogiri::HTML(open("http://www.itl.nist.gov/div898/handbook/eda/section3/eda3672.htm")) { |f| Nokogiri::XML(f) }

document.at('table').search('tr').each do |row|
  cells = row.search('th, td').map { |cell| cell.text.strip }

  puts CSV.generate_line(cells)
end

puts "hello !!!!!"
