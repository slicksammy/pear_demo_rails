class CreditCardsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @credit_card = CreditCard.new
  end

  def create
    @credit_card = CreditCard.new(credit_card_params)
    if @credit_card.save
      redirect_to credit_cards_path, notice: 'Credit card was successfully created.'
    else
      render :new
    end
  end

  def index
    @credit_cards = CreditCard.all
  end

  private

  def credit_card_params
    params.require(:credit_card).permit(:card_number, :expiration_date, :cvc_code, :balance)
  end
end
