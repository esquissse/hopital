class TypesDonneesVitalesController < ApplicationController
  before_action :set_type_donnee_vitale, only: [:show, :edit, :update, :destroy]

  # GET /types_donnees_vitales
  # GET /types_donnees_vitales.json
  def index
    @types_donnees_vitales = TypeDonneeVitale.all
  end

  # GET /types_donnees_vitales/1
  # GET /types_donnees_vitales/1.json
  def show
  end

  # GET /types_donnees_vitales/new
  def new
    @type_donnee_vitale = TypeDonneeVitale.new
  end

  # GET /types_donnees_vitales/1/edit
  def edit
  end

  # POST /types_donnees_vitales
  # POST /types_donnees_vitales.json
  def create
    @type_donnee_vitale = TypeDonneeVitale.new(type_donnee_vitale_params)

    respond_to do |format|
      if @type_donnee_vitale.save
        format.html { redirect_to @type_donnee_vitale, notice: 'Type donnee vitale was successfully created.' }
        format.json { render :show, status: :created, location: @type_donnee_vitale }
      else
        format.html { render :new }
        format.json { render json: @type_donnee_vitale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /types_donnees_vitales/1
  # PATCH/PUT /types_donnees_vitales/1.json
  def update
    respond_to do |format|
      if @type_donnee_vitale.update(type_donnee_vitale_params)
        format.html { redirect_to @type_donnee_vitale, notice: 'Type donnee vitale was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_donnee_vitale }
      else
        format.html { render :edit }
        format.json { render json: @type_donnee_vitale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /types_donnees_vitales/1
  # DELETE /types_donnees_vitales/1.json
  def destroy
    @type_donnee_vitale.destroy
    respond_to do |format|
      format.html { redirect_to types_donnees_vitales_url, notice: 'Type donnee vitale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_donnee_vitale
      @type_donnee_vitale = TypeDonneeVitale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_donnee_vitale_params
      params.require(:type_donnee_vitale).permit(:libelle, :unite)
    end
end
