class Backer 

attr_reader :name 

    def initialize(name)
        @name = name 
    end 


    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        link = ProjectBacker.all.select { |joiner| 
         joiner.backer == self
    }
        link.map { |link| link.project }
    end 


        

end 