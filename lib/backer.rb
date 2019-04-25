require 'pry'
class Backer
  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if !@backed_projects.include?(project)
      @backed_projects << project
      project.add_backer(self)
    end
    project
  end

end
