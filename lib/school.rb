# code here!
class School

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

  def roster(grade)
    self.roster[grade]
  end
end
