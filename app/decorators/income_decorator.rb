class IncomeDecorator < Draper::Decorator
  delegate_all
  
  def categories
    ['Basic expenses', 'Car & Transport', 'Entertainment', 'Bills', 'Finances']
  end
end
