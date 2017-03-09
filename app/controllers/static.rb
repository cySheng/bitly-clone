get '/' do
  erb :"static/index"


end

get '/:short_url' do
	answer = Url.find_by(short_url: params[:short_url])
	if answer.clickcount == nil
		answer.update(clickcount: 1)
	else
		answer.update(clickcount: answer.clickcount + 1)
	end
	redirect to answer.long_url
end

post '/create_url' do
	# p params[:long_url]
	oriurl = params[:long_url]
	@disc = Url.new(long_url: oriurl)
	@disc.shorten
	@disc.save

	if !(@disc.errors.details[:long_url])
		@disc.shorten
	end
	# while @disc.save == false
	# 	@disc.shorten
	# end
	erb :"static/index"
	# redirect '/'
end