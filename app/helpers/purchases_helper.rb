module PurchasesHelper
  def roi(profit, paid)
    '%2.2f' % ((profit / paid) * 100)
  end
end
