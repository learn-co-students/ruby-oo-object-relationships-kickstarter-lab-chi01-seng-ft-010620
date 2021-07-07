require_relative "project_backer"
class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select{|n| n.backer == self}.map{|n| n.project}
    end

end