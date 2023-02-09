# your code goes here

class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize (name, bank_account = 25, happiness = 8, hygiene=8)
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
    end

    #the below is setting the range of the happiness so that it can't be changed 
    #in the setter instance
   # method
    def happiness=(value)
        @happiness = [[0,value].max, 10].min
    end

    def happy?
        @happiness > 7
    end

      #the below is setting the range of the hygiene so that it can't be changed 
      #in the setter instance
    def hygiene=(value)
        @hygiene = [[0,value].max, 10].min
     end

    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end
# remember flow of code : from up to down, we have already set the hygiene max and min
# we need to use self.hygiene because we targeting the hygiene we have set already
# so, if we increament hygiene it won't go past 10 or less than zero

# this applies to line 48 to 52 as well
    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)

        self.happiness += 3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -=2
            return 'blah blah partisan blah lobbyist'

        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
          return 'blah blah sun blah rain'

        else "blah blah blah blah blah"

        end
    end

end
person = Person.new("")
