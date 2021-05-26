class BasicInformationsController < ApplicationController
  before_action :set_basic_information, only: %i[ show edit update destroy ]

  # GET /basic_informations or /basic_informations.json
  def index
    @basic_informations = BasicInformation.all
  end

  # GET /basic_informations/1 or /basic_informations/1.json
  def show
  end

  # GET /basic_informations/new
  def new
    @basic_information = BasicInformation.new
  end

  # GET /basic_informations/1/edit
  def edit
  end

  # POST /basic_informations or /basic_informations.json
  def create
    @basic_information = BasicInformation.new(basic_information_params)
    respond_to do |format|
      if @basic_information.save
        format.html { redirect_to @basic_information, notice: "Basic information was successfully created." }
        format.json { render :show, status: :created, location: @basic_information }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @basic_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basic_informations/1 or /basic_informations/1.json
  def update
    respond_to do |format|
      if @basic_information.update(basic_information_params)
        format.html { redirect_to @basic_information, notice: "Basic information was successfully updated." }
        format.json { render :show, status: :ok, location: @basic_information }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @basic_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_informations/1 or /basic_informations/1.json
  def destroy
    @basic_information.destroy
    respond_to do |format|
      format.html { redirect_to basic_informations_url, notice: "Basic information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_information
      @basic_information = BasicInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basic_information_params
      params.fetch(:basic_information, {}).permit(:building_name, :rent, :address, :age, :info)
    end
end
