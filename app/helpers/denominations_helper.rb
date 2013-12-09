module DenominationsHelper
  def as_mbtc(bitcoin)
    denomination = Denomination.mbtc
    "#{"%5.6f" % (value / denomination.value)} #{denomination.symbol}"
  end

  def as_usd(value)
    "$#{"%5.2f" % value}"
  end
end
