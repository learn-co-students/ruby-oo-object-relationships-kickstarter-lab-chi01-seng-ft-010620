class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        backed_projects.map do |project_backer|
            project_backer.project
        end
    end
    
end