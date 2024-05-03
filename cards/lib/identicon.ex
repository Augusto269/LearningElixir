defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  Provides methods for creating an identicon.
  """

  @doc """
  Create an identicon.

  ## Examples

      iex> Identicon.create("hello")
      [[

      ]]
  """
  def main (input) do
    input
    |> hash_input()
    |> pick_color
  end


  def pick_color(input) do

    Enum.random(["#FF0000", "#00FF00", "#0000FF"])
  end

  def hash_input(input) do
    input
    |> String.to_charlist()
    |> :crypto.hash(:sha256)
    |> Base.encode16(case: :lower)
    |> String.slice(0..5)
    |> %Identicon.Image{hex: hex}
  end

