class SportInstancesController < ApplicationController
  before_action :set_sport_instance, only: [:show, :edit, :update, :destroy]

  # GET /sport_instances
  # GET /sport_instances.json
  def index
    @sport_instances = SportInstance.all
  end

  # GET /sport_instances/1
  # GET /sport_instances/1.json
  def show
  end

  # GET /sport_instances/new
  def new
    @sport_instance = SportInstance.new
  end

  # GET /sport_instances/1/edit
  def edit
  end

  # POST /sport_instances
  # POST /sport_instances.json
  def create
    @sport_instance = SportInstance.new(sport_instance_params)

    respond_to do |format|
      if @sport_instance.save
        format.html { redirect_to @sport_instance, notice: 'Sport instance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sport_instance }
      else
        format.html { render action: 'new' }
        format.json { render json: @sport_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sport_instances/1
  # PATCH/PUT /sport_instances/1.json
  def update
    respond_to do |format|
      if @sport_instance.update(sport_instance_params)
        format.html { redirect_to @sport_instance, notice: 'Sport instance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sport_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_instances/1
  # DELETE /sport_instances/1.json
  def destroy
    @sport_instance.destroy
    respond_to do |format|
      format.html { redirect_to sport_instances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport_instance
      @sport_instance = SportInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_instance_params
      params[:sport_instance]
    end
end
