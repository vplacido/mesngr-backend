class SendersController < ApplicationController
  before_action :set_sender, only: [:show, :update, :destroy]

  # GET /senders
  def index
    @senders = Sender.all

    render json: @senders
  end

  # GET /senders/1
  def show
    render json: @sender
  end

  # POST /senders
  def create
    @sender = Sender.new(sender_params)

    if @sender.save
      render json: @sender, status: :created, location: @sender
    else
      render json: @sender.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /senders/1
  def update
    if @sender.update(sender_params)
      render json: @sender
    else
      render json: @sender.errors, status: :unprocessable_entity
    end
  end

  # DELETE /senders/1
  def destroy
    @sender.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sender
      @sender = Sender.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sender_params
      params.require(:sender).permit(:message_id, :name)
    end
end
