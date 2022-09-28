class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    id = params[:id] #extracting of the dynamic Id that comes with the url
    render json: Student.find(id) #Finding the record with the value of the id and rendering it using params
  end

end
