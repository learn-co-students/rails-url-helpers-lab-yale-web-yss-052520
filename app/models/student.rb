class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  # def initialize(hash)
  #   super(hash)
  #   unless @student.methods.include?(:active) && @student.active
  #     self.update_attribute(:active, false)
  #   end
  # end
  # def active

  # end
  # def active=

  # end
end