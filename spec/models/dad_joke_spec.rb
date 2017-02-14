require 'rails_helper'

RSpec.describe DadJoke, type: :model do
	let(:dad_joke) { DadJoke.create(joke: "Why do zoo animals make the worst test takers?", answer: "Because they have cheetahs.") }
	it 'should have a joke' do
		dad_joke.joke.should_be "Why do animals make the worst test takers?"
	end
end
