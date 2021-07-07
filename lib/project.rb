require_relative "project_backer"
class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ProjectBacker.all.select{|n| n.project == self}.map{|n| n.backer}
    end

end