class RandomString

  attr_accessor :length, :avoid_confusing, :avoid_symbol

  def initialize(length: 10, avoid_confusing: false, avoid_symbol: false)
    @length = length
    @avoid_confusing = avoid_confusing
    @avoid_symbol    = avoid_symbol
  end

  def letters
    @letters ||= _letters
  end

  def string
    @length.times.map{ letters.sample }.join
  end

  private
  def _letters
    set = [*('a'..'z'), *('A'..'Z'), *('0'..'9')]
    set += '!@#$%&*_+:?,.=-'.split(//) unless avoid_symbol
    set -= 'iIlLoOuvUV01'.split(//) if avoid_confusing
    set
  end
end
