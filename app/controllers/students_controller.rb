class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = find_student()
  end

  def activate 
    @student = find_student()
    @student.update(active: !@student.active)
    
    redirect_to action: "show", id: @student.id
  end

  def find_student()
    Student.find(params[:id])
  end
end
