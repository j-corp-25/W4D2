require_relative "employee_class"

class Manager < Employee
  attr_accessor :employees

  def initialize(name,title,salary,boss,*employees)
    super(name,title,salary,boss)
    @employees = [Employee.new(employee)]
  end

  def bonus(multiplier)
    super
    sum = 0
    @employees.each { |employee| sum += employee.salary }
    sum * multiplier
  end

end
