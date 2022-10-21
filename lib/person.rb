require "pry"

class Person
 attr_reader :name
 attr_accessor :bank_account

 def initialize(name, bank_account=25, happiness=8, hygiene=8)
  @name = name
  @bank_account = bank_account
  @happiness = happiness
  @hygiene = hygiene
 end

 def hygiene
  @hygiene
 end

 def hygiene=(level)
  @hygiene = if level > 10
   10
   elsif level < 0
    0
    else
     level
    end
 end

def happiness
 @happiness
end

 def happiness=(value)
  @happiness = if value > 10
   10
  elsif value < 0
    0
   else
    value
   end
 end

 def happy?
  if happiness > 7
   true
  else
   false
  end
 end

 def clean?
  if hygiene > 7
   true
  else
   false
  end
 end

 def get_paid(amount)
  @bank_account += amount
  "all about the benjamins"
 end

 def take_bath
  self.hygiene += 4
  '♪ Rub-a-dub just relaxing in the tub ♫'
 end

 def work_out
  self.hygiene -= 3
  self.happiness += 2
  '♪ another one bites the dust ♫'
 end

 def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
 end

 
 def start_conversation(convo_starter, topic)
  if topic == "politics"
   self.happiness -= 2
   convo_starter.happiness -= 2
   'blah blah partisan blah lobbyist'
  elsif topic == "weather"
   self.happiness += 1
   convo_starter.happiness += 1
   'blah blah sun blah rain'
  else
   'blah blah blah blah blah'
  end
 end
end

# felix = Person.new("FLeix")

# maria = Person.new("maria")
# felix.call_friend(felix)
# binding.pry

