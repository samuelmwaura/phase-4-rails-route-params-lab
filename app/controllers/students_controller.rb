class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    id = params[:id]
    render json: Student.find(id)
  end

end
