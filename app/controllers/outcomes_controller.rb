class OutcomesController < ApplicationController
  expose_decorated(:outcome)
  expose_decorated(:outcomes) { Outcome.all.order('outcome_date DESC') }

  def create
    outcome = current_user.outcomes.create(outcome_params)
    if outcome.save
      redirect_to outcomes_path, notice: 'Outcome added'
    else
      redirect_to outcomes_path
    end
  end

  private

  def outcome_params
    params.require(:outcome).permit(:outcome_date, :outcome_money,
                                    :description, :category)
  end
end
