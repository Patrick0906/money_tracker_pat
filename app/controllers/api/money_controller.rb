class Api::MoneyController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  
  def create
    @money = Money.new(money_params)
    if @money.save
      render json: {status: 'good'}
    else
      render json: {status: 'error'}
    end
  end

  private

  def money_params
    params.require(:money).permit(:expense_type,
                                  :title,
                                  :amount,
                                  :description)
  end
end
