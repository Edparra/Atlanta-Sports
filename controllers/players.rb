get "/players" do
	@players = Player.order(:team_id)
	erb(:"players/index")
end

get "/players/add" do
	@teams = Team.all
	erb(:"players/add_with_team")
end

get "/players/add/:id" do
	@team = Team.find(params[:id])
	erb(:"players/add")
end

get "/players/edit/:id" do
	@teams = Team.all
	@player = Player.find(params[:id])
	erb(:"players/edit")
end

get "/players/delete/:id" do
	Player.destroy(params[:id])
	redirect '/players'
end

post "/players/add" do
	Player.create(:name=>params[:name], :age=>params[:age], :position=>params[:position], :pic_url=>params[:pic_url], :team_id=>params[:team_id])
	redirect params[:redirect]
end

post "/players/edit" do
	Player.update(params[:id], :name=>params[:name], :age=>params[:age], :position=>params[:position], :pic_url=>params[:pic_url], :team_id=>params[:team_id])
	redirect '/players/' + params[:id]
end

get "/players/:id" do
	@player = Player.find(params[:id])
	erb(:"players/show")
end