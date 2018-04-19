require 'pry'
class Student

  attr_accessor :name, :grade
  attr_reader :id

    def initialize(name, grade, id=nil)
      @name = name
      @grade = grade
      @id = id
    end

    def self.create_table
      sql =  <<-SQL
            CREATE TABLE IF NOT EXISTS students (
              id INTEGER PRIMARY KEY,
              name TEXT,
              grade TEXT
              )
              SQL
        DB[:conn].execute(sql)
        DB[:conn].execute(sql)
>>>>>>> e2d300d00ed3425cf1b765dcf426d415dd3bb005
    end

    def self.drop_table
      sql = "DROP TABLE IF EXISTS students"
        DB[:conn].execute(sql)
    end

<<<<<<< HEAD
    def self.create(name:, grade:)
      student = self.new(name, grade)
      student.save
      student
    end

=======
>>>>>>> e2d300d00ed3425cf1b765dcf426d415dd3bb005
    def save
      sql = <<-SQL
        INSERT INTO students (name, grade)
        VALUES (?, ?)
        SQL

      DB[:conn].execute(sql, self.name, self.grade)
<<<<<<< HEAD
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    end
=======

 end

>>>>>>> e2d300d00ed3425cf1b765dcf426d415dd3bb005
end
