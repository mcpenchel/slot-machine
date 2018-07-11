require_relative '../slot_machine'

def our_test(reel, result)
  it "Gives us #{result} if reel is #{reel[0]}, #{reel[1]}, #{reel[2]}" do
    s = SlotMachine.new
    expect(s.score(reel)).to eq(result)
  end
end

describe SlotMachine do
  describe "#score" do
    our_test(["joker", "bell", "cherry"], 0)

    our_test(["joker", "joker", "joker"], 50)
    our_test(["star", "star", "star"], 40)
    our_test(["bell", "bell", "bell"], 30)
    our_test(["seven", "seven", "seven"], 20)
    our_test(["cherry", "cherry", "cherry"], 10)

    our_test(["joker", "joker", "star"], 25)
    our_test(["joker", "joker", "bell"], 25)
    our_test(["joker", "joker", "seven"], 25)
    our_test(["joker", "joker", "cherry"], 25)

    our_test(["star", "star", "joker"], 20)
    our_test(["star", "star", "bell"], 20)
    our_test(["star", "star", "seven"], 20)
    our_test(["star", "star", "cherry"], 20)

    our_test(["bell", "bell", "joker"], 15)
    our_test(["bell", "bell", "star"], 15)
    our_test(["bell", "bell", "seven"], 15)
    our_test(["bell", "bell", "cherry"], 15)

    our_test(["seven", "seven", "joker"], 10)
    our_test(["seven", "seven", "star"], 10)
    our_test(["seven", "seven", "bell"], 10)
    our_test(["seven", "seven", "cherry"], 10)

    our_test(["cherry", "cherry", "joker"], 5)
    our_test(["cherry", "cherry", "star"], 5)
    our_test(["cherry", "cherry", "bell"], 5)
    our_test(["cherry", "cherry", "seven"], 5)
  end
end
