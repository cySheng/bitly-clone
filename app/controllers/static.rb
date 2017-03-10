get '/' do
  erb :"static/index"


end

get '/:short_url' do
	answer = Url.find_by(short_url: params[:short_url])
	answer.update(clickcount: answer.clickcount + 1)
	redirect to answer.long_url
end

post '/create_url' do
	# p params[:long_url]
	@disc = Url.new(long_url: params[:long_url])
	@disc.shorten

	if @disc.valid?
		@disc.save
	else
		@errors = @disc.errors.messages[:long_url][0]
	end


	# while @disc.save == false
	# 	@disc.shorten
	# end
	erb :"static/index"
	# redirect '/'
end