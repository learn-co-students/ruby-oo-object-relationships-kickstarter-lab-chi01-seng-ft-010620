class Project

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def project_backers
    ProjectBacker.all.select {|backed_projects| backed_projects.project == self}
  end

  def backers
    self.project_backers.map {|project_backer| project_backer.backer}
  end

end
