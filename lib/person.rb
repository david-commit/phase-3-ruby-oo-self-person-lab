require "pry"

class Person
 attr_reader :name
 attr_accessor :bank_account, :happiness

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
  @hygiene = level
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

 def call_friend(instance)
  self.happiness += 3
 end

 def start_conversation(convo_starter, topic)
  if topic == "politics"
   'blah blah partisan blah lobbyist'
  elsif topic == "weather"
   'blah blah sun blah rain'
  else
   'blah blah blah blah blah'
  end
 end
end