# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if self.roster[grade]
      self.roster[grade] << student_name
    else
      self.roster[grade] = []
      self.roster[grade] << student_name
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.sort
  end
end

nw = School.new("NorthWood")
nw.add_student("Michael Roose", 10)
nw.add_student("Mike Hertsel", 11)
nw.add_student("Jeff Hertsel", 10)
nw.add_student("Evan Atkinson", 9)