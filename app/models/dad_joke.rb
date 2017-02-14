class DadJoke < ActiveRecord::Base
	after_create do
		self.rating = 0.00
		self.rated_votes = 0
	end

end
