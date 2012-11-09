require 'pry'
require 'twitter'

Twitter.configure do |config|
	config.consumer_key = 'v22EXtO4YepFFPQZzNCvvA'
	config.consumer_secret = 'i57XczgxgWX1Mnt2J5TSvhUCeXF6V0n1Es16w6sYxM'
	config.oauth_token = '115845851-gkwZ6PIhShFqOexQWzQQt5bAYZl7KL3LLsl5LiJE'
	config.oauth_token_secret = 'Yxo3FBq40nQwhXtcRpNuNZwhaZKt5RZLyMAUKqiqLRI'
end

binding.pry	