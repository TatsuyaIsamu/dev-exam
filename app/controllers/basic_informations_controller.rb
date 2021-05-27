class BasicInformationsController < ApplicationController
  before_action :set_basic_information, only: %i[ show edit update destroy station_add]

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
    2.times{@basic_information.nearest_stations.build}
   end

  # GET /basic_informations/1/edit
  def edit
  end

  def station_add
    @basic_information.nearest_stations.build.save
    redirect_to edit_basic_information_path(@basic_information)
  end
  
  # POST /basic_informations or /basic_informations.json
  def create
    @basic_information = BasicInformation.new(basic_information_params)
      if @basic_information.save
        redirect_to @basic_information, notice: "Basic information was successfully created." 
      else
        render :new
      end
  end

  # PATCH/PUT /basic_informations/1 or /basic_informations/1.json
  def update
    if @basic_information.update(basic_information_params)
      redirect_to @basic_information, notice: "Basic information was successfully updated." 
    else
      render :edit
    end
  end

  # DELETE /basic_informations/1 or /basic_informations/1.json
  def destroy
    @basic_information.destroy
    redirect_to basic_informations_url, notice: "Basic information was successfully destroyed." 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_basic_information
    @basic_information = BasicInformation.find(params[:id])
  end 

  # Only allow a list of trusted parameters through.quitqui
  def basic_information_params
  
    params.require(:basic_information).permit(:building_name, :rent, :address, :age, :info, nearest_stations_attributes: %i[route_name station_name minuites_on_foot])
   
  end
end 
