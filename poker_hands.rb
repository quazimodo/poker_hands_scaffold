class PokerHands

  def initialize(hands)
    filter = /Black: (.*) White: (.*)/
    matches = filter.match hands

    @black = matches[1]
    @white = matches[2]

  end


  def winning_hand
    if _highest(@black) > _highest(@white)
      'Black'
    elsif _highest(@black) < _highest(@white)
      'White'
    else
      'Draw'
    end
  end

  private

  def _highest(cards)

    card_strings = cards.split(" ")

    card_values = card_strings.map do |card|
      value_string = card.gsub(/[CDHS]/, "")
      _value_to_i value_string
    end

    card_values.max
  end

  def _value_to_i(str)
    case str
    when "T"
      10
    when "J"
      11
    when "Q"
      12
    when "K"
      13
    when "A"
      14
    else
      str.to_i
    end
  end
end
