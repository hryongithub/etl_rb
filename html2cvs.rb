#!//usr/bin/env ruby

require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'csv'

### document = Nokogiri::HTML(input)
<<<<<<< HEAD
### document = File.open("invoices.html") { |f| Nokogiri::XML(f) }
document = Nokogiri::HTML(open("http://www.itl.nist.gov/div898/handbook/eda/section3/eda3672.htm")) { |f| Nokogiri::XML(f) }
=======
document = File.open("invoices.html") { |f| Nokogiri::XML(f) }
### document = Nokogiri::HTML(open("http://www.itl.nist.gov/div898/handbook/eda/section3/eda3672.htm")) { |f| Nokogiri::XML(f) }
>>>>>>> 4cb872e198ff0d2ede4da23dbeeb554486fd9c5c

document.at('table').search('tr').each do |row|
  cells = row.search('th, td').map { |cell| cell.text.strip }

  puts CSV.generate_line(cells)
end

puts "hello !!!!!"
