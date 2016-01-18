class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /classrooms
  # GET /classrooms.json
  def index
    @classrooms = Classroom.search(params[:search]).order("#{sort_column} #{sort_direction}")
    @classrooms = Classroom.paginate(page: params[:page], per_page: 5)
  end

  # GET /classrooms/1
  # GET /classrooms/1.json
  def show

  end

  # GET /classrooms/new
  def new
    @classroom = Classroom.new
  end

  # GET /classrooms/1/edit
  def edit
  end

  # POST /classrooms
  # POST /classrooms.json
  def create
    @classroom = Classroom.new(classroom_params)

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to @classroom, notice: 'Classroom was successfully created.' }
        format.json { render :show, status: :created, location: @classroom }
      else
        format.html { render :new }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classrooms/1
  # PATCH/PUT /classrooms/1.json
  def update
    respond_to do |format|
      if @classroom.update(classroom_params)
        format.html { redirect_to @classroom, notice: 'Classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @classroom }
      else
        format.html { render :edit }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classrooms/1
  # DELETE /classrooms/1.json
  def destroy
    @classroom.destroy
    respond_to do |format|
      format.html { redirect_to classrooms_url, notice: 'Classroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classroom_params
      params.require(:classroom).permit(:course_id, :course_id, :tutor_id, :tutor_id, :tutor_last_name,
                    :tutor_first_name, :student_id, :student_id, :student_last_name, :student_first_name)
    end
  def sortable_columns
    ["course_id", "tutor_id", "student_id", "tutor_last_name", "tutor_first_name",
                                         "student_last_name", "student_first_name"]
  end
  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "name"
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
