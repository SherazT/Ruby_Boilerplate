require 'http'
require 'byebug'
require 'awesome_print'
require_relative 'product_page'

class GetProduct

	def disemvowel(str)
	['a', 'e', 'i', 'o', 'u'].each do |x|
		str.gsub!(x, '')
	 end
	  str
	end
end