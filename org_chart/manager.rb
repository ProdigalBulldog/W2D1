require_relative 'employee'

class Manager < Employee
  
  attr_reader :employees
  
  def initialize(name, title, salary, boss, employees=[])
    super(name, title, salary, boss)
    @employees = employees
  end
  
  def add_employee(employee)
    unless @employees.include?(employee)
      @employees << employee
      employee.boss = self
    end
  end
  
  def fire_employee(employee)
    @employees.delete(employee)
    employee.boss = nil
    puts "You're fired!"
  end
  
  def pyramid_scheme
    queue = self.employees
    total = 0
    until queue.empty?
      man = queue.shift
      total += man.salary
      queue += man.employees if man.is_a? Manager
    end
    total
  end
  
  def bonus(multiplier)
    self.pyramid_scheme * multiplier
  end
  
end