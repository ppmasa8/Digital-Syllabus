class SyllabusesController < ApplicationController
  def index
    @q = Syllabus.ransack(params[:q])
    @syllabuses = @q.result(distinct: true).page(params[:page])
  end

  def show
  end

  private

  def set_game
    @syllabus = Syllabus.find(params[:id])
  end

  def syllabus_params
    params.require(:syllabus).permit(:subject, :unit_and_course_int, :subject_type, :teacher, :schooling, :textbook, :summary)
  end
end
