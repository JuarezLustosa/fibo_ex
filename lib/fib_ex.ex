

defmodule FibEx do
  # This solution use acumulator, to be fast. get value of acumulator be linear
  # start acumulator 0
  def calculate(n), do: calculate(n - 1, 0, 1)
  # on this when n ==0 return the acumulator 2
  def calculate(0, _acumul1, acumul2), do: acumul2
  # this sun the acumulator 1 and 2 and put on acumul2
  def calculate(n, acumul1, acumul2), do: calculate(n-1, acumul2, acumul1 + acumul2)
  """
    Results example of execute calculate
    n = 5
    (n, acumul1, acumul2)
    (4,       0,       1)
    (3,       1,       1)
    (2,       1,       2)
    (1,       2,       3)
    (0,       3,       5)
  """

  # def return(1), do: [1]
  # def return(2), do: [1, 1]
  # the [] is the acumulator
  def return(n), do: return(n, [])
  def return(n, []), do: return(n-1, [1])
  def return(0, acc), do: Enum.reverse(acc)
  def return(n, [1]), do: return(n-1, [1, 1])
  def return(n, [el1 | [el2 | _tail]] = acc) do
    return(n - 1, [el1 + el2 | acc])
  end
end


# This is solucion whit recursion, but has a problem when the position is to biger
# because is calling calcultate funciontion exponencially
# defmodule FibEx do
#   def calculate(1), do: 1
#   def calculate(2), do: 1
#   def calculate(n), do: calculate(n - 1) + calculate(n - 2)
# end
