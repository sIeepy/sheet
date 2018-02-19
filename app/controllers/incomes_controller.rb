class IncomesController < ApplicationController
  expose_decorated(:income)
  expose_decorated(:incomes) { Income.all.order('income_date DESC') }

  def create
    income = current_user.incomes.create(income_params)
    if income.save
      redirect_to incomes_path, notice: 'Income added'
    else
      redirect_to incomes_path
    end
  end

  private

  def income_params
    params.require(:income).permit(:income_money, :income_date,
                                   :description, :category)
  end
end
