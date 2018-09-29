class School
  def initialize
    @roster = {}
  end

  def students(grade)
    @roster[grade] || []
  end

  def add(name, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
    @roster[grade].push(name).sort!
  end

  def students_by_grade
    @roster.sort.map {|key, value| {grade: key, students: value}}
  end
end
