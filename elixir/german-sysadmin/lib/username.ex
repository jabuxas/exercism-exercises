defmodule Username do
  # defp translate_character(?ä),
  #   do: ~c"ae"
  #
  # defp translate_character(?ö),
  #   do: ~c"oe"
  #
  # defp translate_character(?ü),
  #   do: ~c"ue"
  #
  # defp translate_character(?ß),
  #   do: ~c"ss"
  #
  # defp translate_character(any), do: any
  # def sanitize(username),
  #   do:
  #     username
  #     |> Enum.map(&translate_character/1)
  #     |> List.flatten()
  #     |> Enum.filter(&(&1 === ?_ or (&1 >= ?a and &1 <= ?z)))

  def sanitize(username) do
    Enum.flat_map(username, fn
      ?ä -> ~c"ae"
      ?ö -> ~c"oe"
      ?ü -> ~c"ue"
      ?ß -> ~c"ss"
      c when c === ?_ or (c >= ?a and c <= ?z) -> [c]
      _ -> []
    end)
  end
end
