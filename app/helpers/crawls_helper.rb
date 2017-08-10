module CrawlsHelper

require 'rubygems'
require 'nokogiri'
require "base64"
require 'open-uri'
require 'pry'

def get_image(reg_no)
doc = Nokogiri::HTML(open("http://coe1.annauniv.edu/home/"))
doc.css('#login_stu').each do |link|
	url = link.css('img')[0].first[1]
	return url
end
end
	# value = Base64.decode64(url['data:image/png;base64,'.length .. -1])
# 	File.open('test1.png', 'wb') { |f| f.write(value) }
# end
# 	File.open('test1.png', 'r') do|f|
end
