defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(t) do
    40 - t
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(layers, dt_oven) do
    preparation_time_in_minutes(layers) + dt_oven
  end

  def alarm() do
    "Ding!"
  end
end
