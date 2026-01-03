defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA
  """

  def to_rna([]), do: []

  # first iteration

  # @spec to_rna([char]) :: [char]
  # def to_rna([head | tail]) do
  #   transformed = transform_char(head)
  #   ~c"#{transformed}#{to_rna(tail)}"
  # end
  #
  # def transform_char(char) do
  #   case <<char::utf8>> do
  #     "G" -> "C"
  #     "C" -> "G"
  #     "T" -> "A"
  #     "A" -> "U"
  #   end
  # end

  def to_rna([]), do: []
  def to_rna([head | tail]), do: [transform(head) | to_rna(tail)]

  defp transform(?G), do: ?C
  defp transform(?C), do: ?G
  defp transform(?T), do: ?A
  defp transform(?A), do: ?U
end
