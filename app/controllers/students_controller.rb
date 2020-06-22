class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def activate
    student = set_student

    if student.active == false
      student.update(active: true)
    else
      student.update(active: false)
    end

    redirect_to student_path(student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end