# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster[student_grade].nil? || @roster[student_grade].empty?
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    else
      @roster[student_grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end 
  end

end
