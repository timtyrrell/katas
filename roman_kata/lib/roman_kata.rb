class RomanKata

  ROMANS = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV',
    1    => 'I',
  }

  def self.to_roman(number)
    ROMANS.inject('') do |output, (k,v)|
      puts "k #{k.inspect} - v #{v.inspect} - output: #{output.inspect}"

      div = number / k

      if div > 0
        mod = number % k
        output << v * div
        number -= k * div
      end
      output
    end
  end
end
