class SyllabusesController < ApplicationController
  def index
    @q = Syllabus.ransack(params[:q])
    @syllabuses = @q.result(distinct: true).page(params[:page])
  end

  def show
    respond_to do |format|
      format.pdf do
        send_file('/public', filename: filename, disposition: 'inline')
      end
    end
  end

  private

  def filename
    # pdfのファイル名を指定
    "#{@sy.subject}.pdf"
  end

  def set_game
    @syllabus = Syllabus.find(params[:id])
  end

  def syllabus_params
    params.require(:syllabus).permit(:subject, :unit_and_course_int, :subject_type, :teacher, :schooling, :textbook, :summary)
  end
end
