class DonneesVitalesController < ApplicationController
  before_action :set_donnee_vitale, only: [:show, :edit, :update, :destroy]

  # GET /donnees_vitales
  # GET /donnees_vitales.json
  def index
    @donnees_vitales = DonneeVitale.all
  end

  # GET /donnees_vitales/1
  # GET /donnees_vitales/1.json
  def show
  end

  # GET /donnees_vitales/new
  def new
    @donnee_vitale = DonneeVitale.new
  end

  # GET /donnees_vitales/1/edit
  def edit
  end

  # POST /donnees_vitales
  # POST /donnees_vitales.json
  def create
    @donnee_vitale = DonneeVitale.new(donnee_vitale_params)

    respond_to do |format|
      if @donnee_vitale.save
        format.html { redirect_to @donnee_vitale, notice: 'Donnee vitale was successfully created.' }
        format.json { render :show, status: :created, location: @donnee_vitale }
      else
        format.html { render :new }
        format.json { render json: @donnee_vitale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donnees_vitales/1
  # PATCH/PUT /donnees_vitales/1.json
  def update
    respond_to do |format|
      if @donnee_vitale.update(donnee_vitale_params)
        format.html { redirect_to @donnee_vitale, notice: 'Donnee vitale was successfully updated.' }
        format.json { render :show, status: :ok, location: @donnee_vitale }
      else
        format.html { render :edit }
        format.json { render json: @donnee_vitale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donnees_vitales/1
  # DELETE /donnees_vitales/1.json
  def destroy
    @donnee_vitale.destroy
    respond_to do |format|
      format.html { redirect_to donnees_vitales_url, notice: 'Donnee vitale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donnee_vitale
      @donnee_vitale = DonneeVitale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donnee_vitale_params
      params.require(:donnee_vitale).permit(:date, :valeur, :patient_id, :type_donnee_vitale_id)
    end
end
