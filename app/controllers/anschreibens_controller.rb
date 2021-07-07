class AnschreibensController < ApplicationController
  before_action :set_anschreiben, only: [:show, :edit, :update, :destroy]

  # GET /anschreibens
  # GET /anschreibens.json
  def index
    @anschreibens = Anschreiben.all
  end

  # GET /anschreibens/1
  # GET /anschreibens/1.json
  def show
  end

  # GET /anschreibens/new
  def new
    @anschreiben = Anschreiben.new
  end

  # GET /anschreibens/1/edit
  def edit
  end

  # POST /anschreibens
  # POST /anschreibens.json
  def create
    @anschreiben = Anschreiben.new(anschreiben_params)

    respond_to do |format|
      if @anschreiben.save
        format.html { redirect_to @anschreiben, notice: 'Anschreiben was successfully created.' }
        format.json { render :show, status: :created, location: @anschreiben }
      else
        format.html { render :new }
        format.json { render json: @anschreiben.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anschreibens/1
  # PATCH/PUT /anschreibens/1.json
  def update
    respond_to do |format|
      if @anschreiben.update(anschreiben_params)
        format.html { redirect_to @anschreiben, notice: 'Anschreiben was successfully updated.' }
        format.json { render :show, status: :ok, location: @anschreiben }
      else
        format.html { render :edit }
        format.json { render json: @anschreiben.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anschreibens/1
  # DELETE /anschreibens/1.json
  def destroy
    @anschreiben.destroy
    respond_to do |format|
      format.html { redirect_to anschreibens_url, notice: 'Anschreiben was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anschreiben
      @anschreiben = Anschreiben.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anschreiben_params
      params.require(:anschreiben).permit(:name, :address, :stadt, :bewerbungals, :kompetenzen, :firmaname, :firmaaddress, :firmastadt)
    end
end
