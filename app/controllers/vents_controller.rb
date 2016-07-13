class VentsController < ApplicationController
  before_action :set_vent, only: [:show, :edit, :update, :destroy]

  # GET /vents
  # GET /vents.json
  def index
    @vents = Vent.all
  end

  # GET /vents/1
  # GET /vents/1.json
  def show
  end

  # GET /vents/new
  def new
    @vent = Vent.new
  end

  # GET /vents/1/edit
  def edit
  end

  # POST /vents
  # POST /vents.json
  def create
    @vent = Vent.new(vent_params)
    @vent.user_id = current_user.id

    respond_to do |format|
      if @vent.save
        format.html { redirect_to @vent, notice: 'Vent was successfully created.' }
        format.json { render :show, status: :created, location: @vent }
      else
        format.html { render :new }
        format.json { render json: @vent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vents/1
  # PATCH/PUT /vents/1.json
  def update
    respond_to do |format|
      if @vent.update(vent_params)
        format.html { redirect_to @vent, notice: 'Vent was successfully updated.' }
        format.json { render :show, status: :ok, location: @vent }
      else
        format.html { render :edit }
        format.json { render json: @vent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vents/1
  # DELETE /vents/1.json
  def destroy
    @vent.destroy
    respond_to do |format|
      format.html { redirect_to vents_url, notice: 'Vent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vent
      @vent = Vent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vent_params
      params.require(:vent).permit(:title, :user, :vent_text)
    end
end
