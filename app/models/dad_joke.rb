class DadJoke < ActiveRecord::Base
	after_create do
		self.rating = 0.00
	end
end
