class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!

	validates :long_url, presence: true, format: {with: /https{0,1}:\/\/www\..+\.com/,
						message: "please enter nice link"}, uniqueness: true


	def shorten
		shorturl = ""
		7.times do |x|
			choice = rand(3) + 1
			case choice
			when 1 
				char = rand(9) + 48
			when 2 
				char = rand(25) + 65
			when 3 
				char = rand(25) + 97
			end
			shorturl += char.chr
		end
		self.short_url = shorturl
	end
end
