require_relative 'card'
require_relative 'game'

class Tests
  def test_fullhouse
    c1 = Card.new([2], ['♠'])
    c2= Card.new([2], ['♠'])
    c3= Card.new([2], ['♠'])
    c4= Card.new([2], ['♠'])
    c5= Card.new([2], ['♠'])
    c6= Card.new([2], ['♠'])
    c7= Card.new([2], ['♠'])
    c1.suit = '♠'
    c1.rank = 2
    c2.suit = '♣'
    c2.rank = 2
    c3.suit = '♦'
    c3.rank = 2
    c4.suit = '♠'
    c4.rank = 3
    c5.suit = '♦'
    c5.rank = 3
    c6.suit = '♦'
    c6.rank = 6
    c7.suit = '♦'
    c7.rank = 7
    cards = [c1, c2, c3, c4, c5, c6, c7]
    g = Game.new
    puts "_________________\n\nFullhouse test: " + g.fullhouse?(cards).to_s + "\n_________________\n\n"
  end 
  def test_flush
    c1 = Card.new([2], ['♠'])
    c2= Card.new([2], ['♠'])
    c3= Card.new([2], ['♠'])
    c4= Card.new([2], ['♠'])
    c5= Card.new([2], ['♠'])
    c6= Card.new([2], ['♠'])
    c7= Card.new([2], ['♠'])
    c1.suit = '♦'
    c1.rank = 4
    c2.suit = '♦'
    c2.rank = 8
    c3.suit = '♦'
    c3.rank = 2
    c4.suit = '♦'
    c4.rank = 3
    c5.suit = '♦'
    c5.rank = 9
    c6.suit = '♦'
    c6.rank = 6
    c7.suit = '♠'
    c7.rank = 7
    cards = [c1, c2, c3, c4, c5, c6, c7]
    g = Game.new
    print "_________________\n\nFlush test: " 
    g.flush?(cards)[1].each do |i|
      print '|' + g.int_char(i.rank).to_s + i.suit + '|'
    end
    print "\n_________________"
  end 

  def test_straight_flush
    c1 = Card.new([2], ['♠'])
    c2= Card.new([2], ['♠'])
    c3= Card.new([2], ['♠'])
    c4= Card.new([2], ['♠'])
    c5= Card.new([2], ['♠'])
    c6= Card.new([2], ['♠'])
    c7= Card.new([2], ['♠'])
    c1.suit = '♦'
    c1.rank = 4
    c2.suit = '♦'
    c2.rank = 5
    c3.suit = '♦'
    c3.rank = 2
    c4.suit = '♦'
    c4.rank = 3
    c5.suit = '♦'
    c5.rank = 14
    c6.suit = '♦'
    c6.rank = 6
    c7.suit = '♠'
    c7.rank = 7
    cards = [c1, c2, c3, c4, c5, c6, c7]
    g = Game.new
    print "_________________\n\nStraight Flush test: " 
    g.straight_flush?(cards)[1].each do |i|
      print '|' + g.int_char(i.rank).to_s + i.suit + '|'
    end
    print "\n_________________"
  end 


end

t = Tests.new
t.test_flush
t.test_fullhouse
t.test_straight_flush
