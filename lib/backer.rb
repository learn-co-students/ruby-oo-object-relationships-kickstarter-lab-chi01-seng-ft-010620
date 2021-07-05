require "pry"
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
       backer_array = ProjectBacker.all.select do |name|
            name.backer == self
        end 
        backer_array.map { |backer| backer.project}
        binding.pry
    end 

end 