class School
    
    attr_accessor 
    attr_reader :name, :roster

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student (name, grade)
        @roster[grade] = [] if !@roster.has_key?(grade)
        @roster[grade] << name
    end

    def grade (grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grades, students|
            students.sort!
        end
    end
end