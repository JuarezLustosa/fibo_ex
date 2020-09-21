defmodule FibExTest do
  use ExUnit.Case
  doctest FibEx

  @moduletag timeout: 1000

  # [1, 1, 2, 3, 5]
  describe "calculate fibonacci" do
    test "when number is 1" do
      assert FibEx.calculate(1) == 1
    end

    test "when number is 2" do
      assert FibEx.calculate(2) == 1
    end

    test "when number is 3" do
      assert FibEx.calculate(3) == 2
    end

    test "when number is 4" do
      assert FibEx.calculate(4) == 3
    end

    test "when number is 5" do
      assert FibEx.calculate(5) == 5
    end

    test "when number is 6" do
      assert FibEx.calculate(6) == 8
    end

    test "do not take so long to calculate" do
      assert FibEx.calculate(100) == FibEx.calculate(99) + FibEx.calculate(98)
    end
  end

  describe "return Fiboccine list" do
    test "when whanna number 1" do
      assert FibEx.return(1) == [1]
    end

    test "when whanna number 2" do
      assert FibEx.return(2) == [1, 1]
    end

    test "when whanna number 3" do
      assert FibEx.return(3) == [1, 1, 2]
    end

    test "when whanna number 10" do
      assert FibEx.return(10) == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    end
  end
end
