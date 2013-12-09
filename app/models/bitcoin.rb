class Bitcoin
  attr_reader :denomination, :value

  def initialize(value = 0.0, denomination = Denomination.btc)
    @value = value
    @denomination = denomination
  end

  def is_usd?
    denomination == Denomination.usd
  end

  def to_s
    "#{"%5.4f" % as_denomination} #{denomination.symbol}"
  end

  def as_denomination
    value / denomination.value
  end

  def to_usd
    value * Denomination.usd.value
  end
end