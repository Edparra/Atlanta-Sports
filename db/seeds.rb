require 'active_record'
require_relative 'connection'

# models
require_relative '../models/team.rb'
require_relative '../models/player.rb'

puts 'Seeding database with Atlanta sports teams...'

Player.destroy_all
Team.destroy_all

falcons = Team.create({
	team_name: 'Falcons',
	sport: 'Football',
	logo_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c5/Atlanta_Falcons_logo.svg/1088px-Atlanta_Falcons_logo.svg.png'
})

falcons.players.create([
	{
		name: 'Matt Ryan',
		age: 31,
		position: 'QB',
		pic_url: 'http://l.yimg.com/bt/api/res/1.2/XTZ25c9rrioOfhJKVqxkQg--/YXBwaWQ9eW5ld3NfbGVnbztpbD1wbGFuZTtxPTc1O3c9NjAw/http://media.zenfs.com/en/person/Ysports/matt-ryan-football-headshot-photo.jpg'
	},
	{
		name: 'Julio Jones',
		age: 27,
		position: 'WR',
		pic_url: 'http://l1.yimg.com/bt/api/res/1.2/XJnBtVfmZAAv5bO8QNDJCg--/YXBwaWQ9eW5ld3NfbGVnbztpbD1wbGFuZTtxPTc1O3c9NjAw/http://media.zenfs.com/en/person/Ysports/julio-jones-football-headshot-photo.jpg'
	},
	{
		name: 'Devonta Freeman',
		age: 24,
		position: 'RB',
		pic_url: 'https://lh3.googleusercontent.com/-OG3Ciheiino/AAAAAAAAAAI/AAAAAAAAAA0/uxdFayC-Jcc/s0-c-k-no-ns/photo.jpg'
	}
])

hawks = Team.create({
	team_name: 'Hawks',
	sport: 'Basketball',
	logo_url: 'http://www.underconsideration.com/brandnew/archives/altanta_hawks_2015_logo_secondary.png'
})

hawks.players.create([
	{
		name: 'Dennis Schröder',
		age: 23,
		position: 'PG',
		pic_url: 'http://img.bleacherreport.net/img/images/photos/003/320/622/hi-res-438fd629a043ca459301b011b16ac54b_crop_exact.jpg?w=1500&h=1500&q=85'
	},
	{
		name: 'Kent Bazemore',
		age: 27,
		position: 'SF',
		pic_url: 'http://az616578.vo.msecnd.net/files/2016/04/14/6359624474259490351031898465_b964a486e3afb1048e0f6a706700a6a0.jpg'
	},
	{
		name: 'Dwight Howard',
		age: 30,
		position: 'C',
		pic_url: 'http://images.en.yibada.com/data/thumbs/full/114433/685/0/0/0/dwight-howard-poses-in-his-new-atlanta-hawks-number-8-jersey.jpg'
	}
])

braves = Team.create({
	team_name: 'Braves',
	sport: 'Baseball',
	logo_url: 'http://atlanta.braves.mlb.com/mlb/images/team_logos/social_media/og_1200x630_image/atl_1200x630.jpg'
})

braves.players.create([
	{
		name: 'Dansby Swanson',
		age: 22,
		position: 'SS',
		pic_url: 'http://mlb.mlb.com/mlb/images/players/head_shot/621020.jpg'
	},
	{
		name: 'Aaron Blair',
		age: 24,
		position: 'SP',
		pic_url: 'http://mlb.mlb.com/mlb/images/players/head_shot/594760.jpg'
	},
	{
		name: 'Emilio Bonifacio',
		age: 31,
		position: 'LF',
		pic_url: 'http://mlb.mlb.com/mlb/images/players/head_shot/466988.jpg'
	}
])