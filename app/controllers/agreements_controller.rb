class AgreementsController < ApplicationController
  before_action :set_agreement, only: [:show, :edit, :update, :destroy]

  # GET /agreements
  # GET /agreements.json
  def index
    @agreements = Agreement.all
    @user = current_user
	
    if params[:category] == nil
			@agreements = Agreement.all
    else
			@agreements = Agreement.where(category: params[:category].titleize)
    end
    #alphabetical
		@my_categoryes = Agreement.select(:category).order(:category).distinct
		
  end

  # GET /agreements/1
  # GET /agreements/1.json
  def show
    @user = current_user
		
		if params[:category] == nil
			@agreements = Agreement.all
    else
			@agreements = Agreement.where(category: params[:category].titleize)
    end
    #alphabetical
		@my_categoryes = Agreement.select(:category).order(:category).distinct
		
  end

  # GET /agreements/new
  def new
    @agreement = Agreement.new
		
		if params[:category] == nil
			@agreements = Agreement.all
    else
			@agreements = Agreement.where(category: params[:category].titleize)
    end
    #alphabetical
		@my_categoryes = Agreement.select(:category).order(:category).distinct
		
  end

  # GET /agreements/1/edit
  def edit
		
		if params[:category] == nil
			@agreements = Agreement.all
    else
			@agreements = Agreement.where(category: params[:category].titleize)
    end
    #alphabetical
		@my_categoryes = Agreement.select(:category).order(:category).distinct
		
  end

  # POST /agreements
  # POST /agreements.json
  def create
    @agreement = Agreement.new(agreement_params)

    respond_to do |format|
      if @agreement.save
        format.html { redirect_to @agreement, notice: 'Agreement was successfully created.' }
        format.json { render :show, status: :created, location: @agreement }
      else
        format.html { render :new }
        format.json { render json: @agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agreements/1
  # PATCH/PUT /agreements/1.json
  def update
    respond_to do |format|
      if @agreement.update(agreement_params)
        format.html { redirect_to @agreement, notice: 'Agreement was successfully updated.' }
        format.json { render :show, status: :ok, location: @agreement }
      else
        format.html { render :edit }
        format.json { render json: @agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agreements/1
  # DELETE /agreements/1.json
  def destroy
    @agreement.destroy
    respond_to do |format|
      format.html { redirect_to agreements_url, notice: 'Agreement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agreement
      @agreement = Agreement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agreement_params
      params.require(:agreement).permit(:contract, :category, :banner, :name, :description, :img1, :img2, :img3, :img4, :img5, :address, :phone, :email, :website, :url_map, :facebook, :twitter, :instagram, :contact, :logo)
    end
end
