require "pry"
class Project 
    attr_reader :title, :backer

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end 

    def add_backer(backer)
        @backer = backer
        ProjectBacker.new(self, backer)
    end 

    def self.all
        @@all
    end

    def backers
       found = ProjectBacker.all.select do |backers|
            backers.project == self 
        end
        found.map do |mine|
            mine.backer

        end



    end 


end 