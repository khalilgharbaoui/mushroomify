class MushroomsController < ApplicationController
  before_action :set_mushroom, only: [:show, :edit, :update, :destroy]

  # GET /mushrooms
  # GET /mushrooms.json
  def index
    @mushrooms = Mushroom.all
    @mushrooms = @mushrooms.eadible(params[:eadible]) if params[:eadible].present?
    @mushrooms = @mushrooms.bruiser(params[:bruises]) if params[:bruiser].present?
    @mushrooms = @mushrooms.cap_shape(params[:cap_shape]) if params[:cap_shape].present?
    @mushrooms = @mushrooms.cap_color(params[:cap_color]) if params[:cap_color].present?
    @mushrooms = @mushrooms.cap_surface(params[:cap_surface]) if params[:cap_surface].present?
  end

  # GET /mushrooms/1
  # GET /mushrooms/1.json
  def show
  end

  # GET /mushrooms/new
  def new
    @mushroom = Mushroom.new
  end

  # GET /mushrooms/1/edit
  def edit
  end

  # POST /mushrooms
  # POST /mushrooms.json
  def create
    @mushroom = Mushroom.new(mushroom_params)

    respond_to do |format|
      if @mushroom.save
        format.html { redirect_to @mushroom, notice: 'Mushroom was successfully created.' }
        format.json { render :show, status: :created, location: @mushroom }
      else
        format.html { render :new }
        format.json { render json: @mushroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mushrooms/1
  # PATCH/PUT /mushrooms/1.json
  def update
    respond_to do |format|
      if @mushroom.update(mushroom_params)
        format.html { redirect_to @mushroom, notice: 'Mushroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @mushroom }
      else
        format.html { render :edit }
        format.json { render json: @mushroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mushrooms/1
  # DELETE /mushrooms/1.json
  def destroy
    @mushroom.destroy
    respond_to do |format|
      format.html { redirect_to mushrooms_url, notice: 'Mushroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mushroom
      @mushroom = Mushroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mushroom_params
      params.require(:mushroom).permit(:identifier, :eadible, :cap_shape, :cap_surface, :cap_color, :bruiser)
    end
end
