class SyllabusController < ApplicationController
  before_action :set_syllabus, only: %i[ show ]
  def index
    @q = Syllabus.ransack(params[:q])
    @syllabus = @q.result(distinct: true).page(params[:page])
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
