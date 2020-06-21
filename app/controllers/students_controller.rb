class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
    @status = @student.active ? "active" : "inactive"
  end
  
  def activate
    set_student
    new_status = @student.active ? false : true
    @student.update(active: new_status)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end