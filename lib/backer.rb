class Backer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def project_backers
    ProjectBacker.all.select {|backed_projects| backed_projects.backer == self}
  end

  def backed_projects
    self.project_backers.map {|project_backer| project_backer.project}
  end

end
