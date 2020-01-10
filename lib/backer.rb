class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer_instances = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        project_backer_instances.map do |project_backer_instances|
            project_backer_instances.project
        end
    end
end

# zach = Backer.new("Zach")
# example_project = Project.new("Example")
# puts zach.back_project(example_project).backer.name

# backer_array = ProjectBacker.all.select do |project|
#     project_backer == self
# end
# backer_array.map { |backer| backer.project}