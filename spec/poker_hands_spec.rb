require 'rspec'
require_relative '../poker_hands'

# A poker deck contains 52 cards - each card has a suit which is one of clubs, diamonds, hearts, or spades 
# (denoted C, D, H, and S in the input data). Each card also has a value which is one of 
# 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace (denoted 2, 3, 4, 5, 6, 7, 8, 9, T, J, Q, K, A). 
#
# For scoring purposes, the suits are unordered while the values are ordered as given above, 
# with 2 being the lowest and ace the highest value.
#
# A poker hand consists of 5 cards dealt from the deck. Poker hands are ranked by the following partial order from lowest to highest.
#
# High Card: Hands which do not fit any higher category are ranked by the value of their highest card. 
# If the highest cards have the same value, the hands are ranked by the next highest, and so on.

describe PokerHands do

  it 'should return the correct hand when cards have only numbers' do
    poker_hands = PokerHands.new("Black: 2H 3D 5S 9C 9D  White: 2C 3H 4S 8C 8H")
    expect(poker_hands.winning_hand).to eq('Black')
  end

  it 'should return the correct hand when cards have numbers and letters' do
    poker_hands = PokerHands.new("Black: 2H 3D 5S 9C 9D  White: 2C 3H 4S 8C AH")
    expect(poker_hands.winning_hand).to eq('White')
  end

end
