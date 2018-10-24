# School class
class School
  def initialize
    @roster = {}
  end

  def students(grade)
    @roster[grade] || []
  end

  def add(name, grade)
    @roster[grade] ||= []
    @roster[grade].push(name).sort!
  end

  def students_by_grade
    @roster.sort.map { |key, value| { grade: key, students: value } }
  end
end
