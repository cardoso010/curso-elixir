defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
    metodo responsavel por criar deck
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamont"]

    for suit <- suits, value <- values do
        "#{value} of #{suit}"
    end

  end

  @doc """
    metodo responsavel por alterar a ordem do deck usando
    o Enum.shuffle que é tipo um rand
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    metodo responsavel por verificar se existe uma carta na lista de cartas
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
