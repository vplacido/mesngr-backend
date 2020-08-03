class RecieversController < ApplicationController
  before_action :set_reciever, only: [:show, :update, :destroy]

  # GET /recievers
  def index
    @recievers = Reciever.all

    render json: @recievers
  end

  # GET /recievers/1
  def show
    render json: @reciever
  end

  # POST /recievers
  def create
    @reciever = Reciever.new(reciever_params)

    if @reciever.save
      render json: @reciever, status: :created, location: @reciever
    else
      render json: @reciever.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recievers/1
  def update
    if @reciever.update(reciever_params)
      render json: @reciever
    else
      render json: @reciever.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recievers/1
  def destroy
    @reciever.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reciever
      @reciever = Reciever.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reciever_params
      params.require(:reciever).permit(:message_id, :name)
    end
end
