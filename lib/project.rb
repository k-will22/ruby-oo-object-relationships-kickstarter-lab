class Project 

    @@all = []

    attr_accessor :title, :backer

    def initialize(title)
        @title = title 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def projects 
        ProjectBacker.all.select {|x| x.project == self}
    end 
    
    def backers 
        projects.map {|x| x.backer}
    end 



end 