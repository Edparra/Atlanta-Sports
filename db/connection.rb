# Load Active Record and connect to the DB
ActiveRecord::Base.establish_connection({
  database: 'atl_sports',
  adapter: 'postgresql'
})

# Fix an issue with sinatra and Active Record where connections are left open
if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
