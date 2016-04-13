class NexusController < ApplicationController
  before_action :set_nexu, only: [:show, :edit, :update, :destroy]

  # GET /nexus
  # GET /nexus.json
  def index
    @nexus = Nexu.all
  end

  # GET /nexus/1
  # GET /nexus/1.json
  def show
  end

  # GET /nexus/new
  def new
    @nexu = Nexu.new
  end

  # GET /nexus/1/edit
  def edit
  end

  # POST /nexus
  # POST /nexus.json
  def create
    @nexu = Nexu.new(nexu_params)

    respond_to do |format|
      if @nexu.save
        format.html { redirect_to @nexu, notice: 'Nexu was successfully created.' }
        format.json { render :show, status: :created, location: @nexu }
      else
        format.html { render :new }
        format.json { render json: @nexu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nexus/1
  # PATCH/PUT /nexus/1.json
  def update
    respond_to do |format|
      if @nexu.update(nexu_params)
        format.html { redirect_to @nexu, notice: 'Nexu was successfully updated.' }
        format.json { render :show, status: :ok, location: @nexu }
      else
        format.html { render :edit }
        format.json { render json: @nexu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nexus/1
  # DELETE /nexus/1.json
  def destroy
    @nexu.destroy
    respond_to do |format|
      format.html { redirect_to nexus_url, notice: 'Nexu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nexu
      @nexu = Nexu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nexu_params
      params.require(:nexu).permit(:number, :agreement_contract, :user_contract)
    end
end
