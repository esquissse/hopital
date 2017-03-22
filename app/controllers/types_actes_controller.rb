class TypesActesController < ApplicationController
  before_action :set_type_acte, only: [:show, :edit, :update, :destroy]

  # GET /types_actes
  # GET /types_actes.json
  def index
    @types_actes = TypeActe.all
  end

  # GET /types_actes/1
  # GET /types_actes/1.json
  def show
  end

  # GET /types_actes/new
  def new
    @type_acte = TypeActe.new
  end

  # GET /types_actes/1/edit
  def edit
  end

  # POST /types_actes
  # POST /types_actes.json
  def create
    @type_acte = TypeActe.new(type_acte_params)

    respond_to do |format|
      if @type_acte.save
        format.html { redirect_to @type_acte, notice: 'Type acte was successfully created.' }
        format.json { render :show, status: :created, location: @type_acte }
      else
        format.html { render :new }
        format.json { render json: @type_acte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /types_actes/1
  # PATCH/PUT /types_actes/1.json
  def update
    respond_to do |format|
      if @type_acte.update(type_acte_params)
        format.html { redirect_to @type_acte, notice: 'Type acte was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_acte }
      else
        format.html { render :edit }
        format.json { render json: @type_acte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /types_actes/1
  # DELETE /types_actes/1.json
  def destroy
    @type_acte.destroy
    respond_to do |format|
      format.html { redirect_to types_actes_url, notice: 'Type acte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_acte
      @type_acte = TypeActe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_acte_params
      params.require(:type_acte).permit(:libelle, :cout)
    end
end
