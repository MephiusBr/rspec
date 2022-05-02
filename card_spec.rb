class Card
  attr_reader :suit
  attr_reader :rank

  def initialize(suit, rank)
    @suit = suit 
    @rank = rank
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Spades', 'Ace') }
  #before(:example) do
  #  @card = Card.new('Spades','Ace')
  #end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a custom error message' do
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "Hey, expected #{comparison} but got #{card.suit} instead!"
  end
end
