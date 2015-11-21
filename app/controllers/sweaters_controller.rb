class SweatersController < ApplicationController
  before_action :set_sweater, only: [:show, :edit, :update, :destroy]

  # GET /sweaters
  # GET /sweaters.json
  def index
    @sweaters = Sweater.all
  end

  # GET /sweaters/1
  # GET /sweaters/1.json
  def show
  end

  # GET /sweaters/new
  def new
    @sweater = Sweater.new
  end

  # GET /sweaters/1/edit
  def edit
  end

  # POST /sweaters
  # POST /sweaters.json
  def create
    @sweater = Sweater.new(sweater_params)

    if 

    respond_to do |format|
      if @sweater.save
        format.html { redirect_to @sweater, notice: 'Sweater was successfully created.' }
        format.json { render :show, status: :created, location: @sweater }
      else
        format.html { render :new }
        format.json { render json: @sweater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sweaters/1
  # PATCH/PUT /sweaters/1.json
  def update
    respond_to do |format|
      if @sweater.update(sweater_params)
        format.html { redirect_to @sweater, notice: 'Sweater was successfully updated.' }
        format.json { render :show, status: :ok, location: @sweater }
      else
        format.html { render :edit }
        format.json { render json: @sweater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sweaters/1
  # DELETE /sweaters/1.json
  def destroy
    @sweater.destroy
    respond_to do |format|
      format.html { redirect_to sweaters_url, notice: 'Sweater was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sweater
      @sweater = Sweater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sweater_params
      params.require(:sweater).permit(:full_pattern, :pattern_repeat, :current_size, :decrease_row, :increase_row)
    end
end
