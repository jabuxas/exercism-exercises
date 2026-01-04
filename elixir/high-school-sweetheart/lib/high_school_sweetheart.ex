defmodule HighSchoolSweetheart do
  def first_letter(name),
    do:
      name
      |> String.trim()
      |> String.first()

  def initial(name),
    do:
      first_letter(name)
      |> String.upcase()
      |> then(&"#{&1}.")

  # def initials(full_name),
  #   do:
  #     full_name
  #     |> String.split("\s")
  #     |> Enum.map(&"#{initial(&1)} ")
  #     |> to_string()
  #     |> String.trim_trailing()

  def initials(full_name),
    do:
      full_name
      |> String.split()
      |> Enum.map_join(" ", &initial/1)

  def pair(full_name1, full_name2),
    do: """
    ❤-------------------❤
    |  #{initials(full_name1)}  +  #{initials(full_name2)}  |
    ❤-------------------❤
    """
end
