# Add your code here
# require "pry"
class Dog
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        arr = @@all.map{|each_dog| each_dog.name}
        puts arr.join("\n")
    end

    def save
        @@all << self
    end
end
d1 = Dog.new ("Cassie")
d2 = Dog.new ("ruby")
# binding.pry
