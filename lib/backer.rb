
class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projInfo = ProjectBacker.all.select {|project| project.backer == self}
        projInfo.map {|info_pair| info_pair.project}
    end

end
