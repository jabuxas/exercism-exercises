defmodule BirdCount do
  def today([]), do: nil
  def today([head | _]), do: head

  def increment_day_count([]), do: [1]
  # def increment_day_count([head | tail]), do: List.flatten([head + 1, tail])
  def increment_day_count([head | tail]), do: [head + 1 | tail]

  # def has_day_without_birds?(list), do: 0 in list
  def has_day_without_birds?(list), do: Enum.any?(list, &(&1 == 0))

  defp sum([]), do: 0
  defp sum([head | tail]), do: head + sum(tail)
  # can also do Enum.sum(list)
  def total(list), do: sum(list)

  def busy_days(list), do: Enum.count(list, &(&1 >= 5))
end
