class Project 

attr_reader :title 

    def initialize(title)
        @title = title 
    end 


    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
       link = ProjectBacker.all.select { |element| 
       element.project == self } 
       link.map { |projects| projects.backer}
        
    end 

end 