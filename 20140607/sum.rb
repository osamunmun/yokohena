#!/bin/ruby
require 'pry'

class Calc

  def initialize
    @ryoiki = [[1,1], [1,2], [1,3]]
    @max_width  = 1
    @max_height = 2
  end

  def add(n, m)
    if n == 0 and m == 0
      1
    elsif n == 0
      @ryoiki[n][m-1]
    elsif m == 0
      @ryoiki[n-1][m]
    else
      @ryoiki[n-1][m] + @ryoiki[n][m-1]
    end
  end

  def calc
    total  = 0
    height = 0
    width  = 0
    while !(height == @max_height  and width == @max_width)
      total = total + add(height, width)
      unless height == @max_height
        height = height + 1
      end
      unless width == @max_width
        width = width + 1
      end
    end
    total
  end
end
