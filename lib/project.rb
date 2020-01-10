class Project 
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        my_array = ProjectBacker.all.select { |projectbackers| projectbackers.project == self}
    p my_array.map{ |pj| pj.backer}   
    end
end