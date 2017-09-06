defmodule Example.PythonCalculator do
  use Piton.Port

  def init(_) do
    {:ok, nil}
  end

  def start_link() do
    Example.PythonCalculator.start_link([path: Path.expand("python"), python: "python"], [name: __MODULE__])
  end

  def plus(a, b) do
    Example.PythonCalculator.execute(__MODULE__, :functions, :plus, [a, b])
  end

  def hello(name) do
    Example.PythonCalculator.execute(__MODULE__, :functions, :hello, [name])
  end
end
