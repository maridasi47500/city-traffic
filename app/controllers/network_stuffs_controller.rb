class NetworkStuffsController < ApplicationController
  before_action :set_network_stuff, only: %i[ show edit update destroy ]

  # GET /network_stuffs or /network_stuffs.json
  def index
    @network_stuffs = NetworkStuff.all
  end

  # GET /network_stuffs/1 or /network_stuffs/1.json
  def show
  end

  # GET /network_stuffs/new
  def new
    @network_stuff = NetworkStuff.new
  end

  # GET /network_stuffs/1/edit
  def edit
  end

  # POST /network_stuffs or /network_stuffs.json
  def create
    @network_stuff = NetworkStuff.new(network_stuff_params)

    respond_to do |format|
      if @network_stuff.save
        format.html { redirect_to @network_stuff, notice: "Network stuff was successfully created." }
        format.json { render :show, status: :created, location: @network_stuff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @network_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /network_stuffs/1 or /network_stuffs/1.json
  def update
    respond_to do |format|
      if @network_stuff.update(network_stuff_params)
        format.html { redirect_to @network_stuff, notice: "Network stuff was successfully updated." }
        format.json { render :show, status: :ok, location: @network_stuff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @network_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /network_stuffs/1 or /network_stuffs/1.json
  def destroy
    @network_stuff.destroy!

    respond_to do |format|
      format.html { redirect_to network_stuffs_path, status: :see_other, notice: "Network stuff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_stuff
      @network_stuff = NetworkStuff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def network_stuff_params
      params.require(:network_stuff).permit(:name)
    end
end
