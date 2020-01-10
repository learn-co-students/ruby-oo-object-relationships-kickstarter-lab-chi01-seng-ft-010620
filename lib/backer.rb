require 'pry'
class Backer 
attr_reader :name, :title
     def initialize(name)
        @name = name
        
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def backed_projects

    my_array = ProjectBacker.all.select { |projectbackers| projectbackers.backer == self}
    my_array.map{ |pj| pj.project}    
    
    end

    



end