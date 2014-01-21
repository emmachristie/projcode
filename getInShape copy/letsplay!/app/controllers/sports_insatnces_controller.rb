class SportsInsatncesController < ApplicationController
  before_action :set_sports_insatnce, only: [:show, :edit, :update, :destroy]

  # GET /sports_insatnces
  # GET /sports_insatnces.json
  def index
    @sports_insatnces = SportsInsatnce.all
  end

  # GET /sports_insatnces/1
  # GET /sports_insatnces/1.json
  def show
  end

  # GET /sports_insatnces/new
  def new
    @sports_insatnce = SportsInsatnce.new
  end

  # GET /sports_insatnces/1/edit
  def edit
  end

  # POST /sports_insatnces
  # POST /sports_insatnces.json
  def create
    @sports_insatnce = SportsInsatnce.new(sports_insatnce_params)

    respond_to do |format|
      if @sports_insatnce.save
        format.html { redirect_to @sports_insatnce, notice: 'Sports insatnce was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sports_insatnce }
      else
        format.html { render action: 'new' }
        format.json { render json: @sports_insatnce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sports_insatnces/1
  # PATCH/PUT /sports_insatnces/1.json
  def update
    respond_to do |format|
      if @sports_insatnce.update(sports_insatnce_params)
        format.html { redirect_to @sports_insatnce, notice: 'Sports insatnce was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sports_insatnce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sports_insatnces/1
  # DELETE /sports_insatnces/1.json
  def destroy
    @sports_insatnce.destroy
    respond_to do |format|
      format.html { redirect_to sports_insatnces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sports_insatnce
      @sports_insatnce = SportsInsatnce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sports_insatnce_params
      params[:sports_insatnce]
    end
end
