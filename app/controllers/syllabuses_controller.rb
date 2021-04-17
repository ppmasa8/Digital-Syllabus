class SyllabusesController < ApplicationController
  def index
    @q = Syllabus.ransack(params[:q])
    @syllabuses = @q.result(distinct: true).page(params[:page])
  end
end
