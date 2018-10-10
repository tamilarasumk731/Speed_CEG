class FishermenController < ApplicationController
  before_action :set_fisherman, only: [:show, :update, :destroy]

  # GET /fishermen
  def index
    @fishermen = Fisherman.all

    render json: @fishermen
  end

  # GET /fishermen/1
  def show
    render json: @fisherman
  end

  # POST /fishermen
  def create
    @fisherman = Fisherman.new(fisherman_params)

    if @fisherman.save
      render json: @fisherman, status: :created, location: @fisherman
    else
      render json: @fisherman.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fishermen/1
  def update
    if @fisherman.update(fisherman_params)
      render json: @fisherman
    else
      render json: @fisherman.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fishermen/1
  def destroy
    @fisherman.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fisherman
      @fisherman = Fisherman.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fisherman_params
      params.require(:fisherman).permit(:name, :age, :team_name, :contact_no, :address, :is_fishing)
    end
end
