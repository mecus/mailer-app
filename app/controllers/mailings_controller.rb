class MailingsController < ApplicationController
  before_action :authenticate_user, only: [:index, :show, :destroy]
  before_action :set_mailing, only: [:show, :update, :destroy]
  include SendMail

  # GET /mailings
  def index
    @mailings = Mailing.all

    render json: @mailings
    # MailOrderMailer.order_success(Mailing.last).deliver_now
    # send_mail Mailing.last
    # admin_mail Mailing.last
  end

  # GET /mailings/1
  def show
    render json: @mailing
  end

  # POST /mailings
  def create
    @mailing = Mailing.new(mailing_params)

    if @mailing.save
      render json: @mailing, status: :created, location: @mailing

    else
      render json: @mailing.errors, status: :unprocessable_entity
    end
    send_mail @mailing
    admin_mail @mailing
    # MailOrderMailer.order_success(@mailing).deliver_now

  end

  # PATCH/PUT /mailings/1
  def update
    if @mailing.update(mailing_params)
      render json: @mailing
    else
      render json: @mailing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mailings/1
  def destroy
    @mailing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailing
      @mailing = Mailing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mailing_params
      params.require(:mailing).permit(:name, :email)
    end
end
