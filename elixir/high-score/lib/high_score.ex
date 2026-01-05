defmodule HighScore do
  def new(), do: %{}

  def add_player(map, name, score \\ 0), do: Map.put(map, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: Map.put(scores, name, 0)

  def update_score(scores, name, score), do: Map.update(scores, name, score, &(score + &1))

  def get_players(scores), do: Map.keys(scores)
end
