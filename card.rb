class Card
  def initialize(rank = nil, suit = nil)
    if suit.nil?
      @suit = ['♠', '♣', '♥', '♦'].sample
    else
      @suit = suit
    end
    if rank.nil?
      @rank = [(2..10).to_a, 'J', 'Q', 'K', 'A'].flatten.sample
    else
      @rank = rank
    end
    puts "Create a new card: #{@rank} of #{@suit}"
  end
end

5.times { Card.new }