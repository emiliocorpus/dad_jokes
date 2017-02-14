class DadJoke < ActiveRecord::Base
	has_many :votes

	after_create do
		self.rating = 0.00
		self.rated_votes = 0
	end

	def calculate_rating
		sum = 0.00
		self.votes.each do |vote|
			sum += vote.value
		end
		self.rating = sum / self.votes.count
	end

	
end
