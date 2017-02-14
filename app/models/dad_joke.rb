class DadJoke < ActiveRecord::Base
	has_many :votes

	after_create do
		self.rating = 0.00
		self.rated_votes = 0
	end

end
