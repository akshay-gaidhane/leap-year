class LeapYear
  def initialize(year)
    @year = year
  end

  def call
    if divisible_by_400
      return true
    elsif divisible_by_100
      return false
    elsif divisible_by_4
      return true
    elsif not_divisible_by_4
      return false
    end
    
  end
  private
    def divisible_by_400
      @year % 400 == 0
    end

    def divisible_by_100
      (@year % 100 == 0) && (@year % 400 != 0)
    end

    def divisible_by_4
      (@year % 4 == 0) && (@year % 100 != 0)
    end

    def not_divisible_by_4
      @year % 4 != 0
    end
end

# All years divisible by 400 ARE leap years (so, for example, 2000 was indeed a leap year),
# All years divisible by 100 but not by 400 are NOT leap years (so, for example, 1700, 1800, and 1900 were NOT leap years, NOR will 2100 be a leap year),
# All years divisible by 4 but not by 100 ARE leap years (e.g., 2008, 2012, 2016),
# All years not divisible by 4 are NOT leap years (e.g. 2017, 2018, 2019).