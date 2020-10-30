class Backer 

    @@all = []

    attr_accessor :name, :project

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def projects 
        ProjectBacker.all.select {|x| x.backer == self}
    end 
    
    def backed_projects
        projects.map {|x| x.project}
    end 

end 