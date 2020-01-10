
require "pry"



class Backer
    attr_reader :name, :project
    attr_accessor  

    def initialize(name)
        @name = name
        
    end 

    def back_project(project)
        @project = project
        ProjectBacker.new(project, self)
    end

    def backed_projects
      found = ProjectBacker.all.select do |projects|
        projects.backer == self
       end
       found.map do |mine|
        mine.project
       end
    end 






end 

# christine = Backer.new("Christine")
# project_one = Project.new("Christine's Project")
# project_two = Project.new("Christine's Second Project")
 
#  christine.back_project(project_one)
#  christine.back_project(project_two)


#  puts christine.backed_projects