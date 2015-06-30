class ExploatationsController < ApplicationController
  before_action :set_exploatation, only: [:show, :edit, :update, :destroy]

  # GET /exploatations
  # GET /exploatations.json
  def index
    @exploatations = Exploatation.all
  end

  # GET /exploatations/1
  # GET /exploatations/1.json
  def show
  end

  # GET /exploatations/new
  def new
    @exploatation = Exploatation.new
  end

  # GET /exploatations/1/edit
  def edit
  end

  # POST /exploatations
  # POST /exploatations.json
  def create
    @exploatation = Exploatation.new(exploatation_params)

    respond_to do |format|
      if @exploatation.save
        format.html { redirect_to @exploatation, notice: 'Exploatation was successfully created.' }
        format.json { render :show, status: :created, location: @exploatation }
      else
        format.html { render :new }
        format.json { render json: @exploatation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exploatations/1
  # PATCH/PUT /exploatations/1.json
  def update
    respond_to do |format|
      if @exploatation.update(exploatation_params)
        format.html { redirect_to @exploatation, notice: 'Exploatation was successfully updated.' }
        format.json { render :show, status: :ok, location: @exploatation }
      else
        format.html { render :edit }
        format.json { render json: @exploatation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exploatations/1
  # DELETE /exploatations/1.json
  def destroy
    @exploatation.destroy
    respond_to do |format|
      format.html { redirect_to exploatations_url, notice: 'Exploatation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exploatation
      @exploatation = Exploatation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exploatation_params
      params.require(:exploatation).permit(:name, :description, :location, :barcode, :quantity)
    end
end
