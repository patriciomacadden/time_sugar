module TimeSugar
  VERSION = '0.0.1'

  SECOND = 1
  MINUTE = SECOND * 60
  HOUR   = MINUTE * 60
  DAY    = HOUR   * 24
  WEEK   = DAY    * 7
end

class Fixnum
  %w(SECOND MINUTE HOUR DAY WEEK).each do |verb|
    define_method(verb.downcase) { self * TimeSugar.const_get(verb) }
    alias_method "#{verb.downcase}s", verb.downcase
  end

  def ago
    Time.now - self
  end

  def from_now
    Time.now + self
  end
end
