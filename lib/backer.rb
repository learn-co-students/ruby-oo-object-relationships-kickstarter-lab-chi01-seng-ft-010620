class Backer
    attr_reader :name
    
    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer_instances = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        project_backer_instances.map do |project_backer_instance|
            project_backer_instance.project
        end
    end
end