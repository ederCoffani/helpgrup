class GrupsController < ApplicationController
  before_action :set_grup, only: %i[ show edit update destroy ]

  # GET /grups or /grups.json
  def index
    @grups = Grup.all
  end

  # GET /grups/1 or /grups/1.json
  def show
  end

  # GET /grups/new
  def new
    @grup = Grup.new
  end

  # GET /grups/1/edit
  def edit
  end

  # POST /grups or /grups.json
  def create
    @grup = Grup.new(grup_params)

    respond_to do |format|
      if @grup.save
        format.html { redirect_to @grup, notice: "Grup was successfully created." }
        format.json { render :show, status: :created, location: @grup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grups/1 or /grups/1.json
  def update
    respond_to do |format|
      if @grup.update(grup_params)
        format.html { redirect_to @grup, notice: "Grup was successfully updated." }
        format.json { render :show, status: :ok, location: @grup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grups/1 or /grups/1.json
  def destroy
    @grup.destroy
    respond_to do |format|
      format.html { redirect_to grups_url, notice: "Grup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grup
      @grup = Grup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grup_params
      params.require(:grup).permit(:title, :links, :description)
    end
end
