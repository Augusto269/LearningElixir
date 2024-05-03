defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  Provides methods for creating, shuffling, and checking the contents of a deck of cards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def hello do
    "hi there!"
    :world
  end

  def create_deck do
   values = ["ace","two","three","four","five","six","seven","eight","nine","ten","jack","queen","king"]
   suits = ["Spades","Clubs","hearts","Diamonds"]

   for suit <- suits, value <- values, do: "#{value} of #{suit}"

  end


  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end



 end


