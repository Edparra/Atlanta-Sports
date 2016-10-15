# index
get "/teams" do
	@teams = Team.all
	erb(:"teams/index")
end

get "/teams/add" do
	erb(:"teams/add")
end

get "/teams/edit/:id" do
	@team = Team.find(params[:id])
	erb(:"teams/edit")
end

get "/teams/delete/:id" do
	Team.destroy(params[:id])
	redirect '/teams'
end

post "/teams/edit" do
	Team.update(params[:id], :team_name=>params[:team_name], :sport=>params[:sport], :logo_url=>params[:logo_url])
	redirect '/teams/' + params[:id]
end

post "/teams/add" do
	Team.create(:team_name=>params[:team_name], :sport=>params[:sport], :logo_url=>params[:logo_url])
	redirect '/teams'
end

get "/teams/:id" do
	@team = Team.find(params[:id])
	erb(:"teams/show")
end