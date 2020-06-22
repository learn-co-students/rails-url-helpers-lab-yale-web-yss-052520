class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student.update(active: !@studnet.active)
    redirect_to student_path(set_student)

  private

    def set_student
      @student = Student.find(params[:id])
    end
end