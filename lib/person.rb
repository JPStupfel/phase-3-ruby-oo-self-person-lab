require 'pry'

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account,

    def initialize(name)
            @name = name
            @bank_account = 25
            @happiness = 8
            @hygiene = 8
    end

    def hygiene=(value)
       case true
       when value < 0
        @hygiene = 0
       when value > 10
        @hygiene = 10
       else @hygiene = value
       end
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else @happiness=value
        end
    end
    
    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account = @bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        case topic
        when 'politics'
            self.happiness -=2
            friend.happiness -=2
            return "blah blah partisan blah lobbyist"
        when 'weather'
            self.happiness +=1
            friend.happiness +=1
            return "blah blah sun blah rain"
        else return "blah blah blah blah blah"
        end
    end
end


