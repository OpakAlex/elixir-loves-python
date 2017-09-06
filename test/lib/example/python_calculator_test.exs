defmodule Example.PythonCalculatorTest do
  use ExampleWeb.ConnCase
  doctest Piton

  test "Use Python for plus function" do
    result = Example.PythonCalculator.plus(1, 1)
    assert result == 2
  end

  test "Say hello" do
    result = Example.PythonCalculator.hello("Alex")
    assert result == "Hello Alex"
  end
end
