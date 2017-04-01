defmodule Account do
  def balance(initial, spending) do
    initial - spending
    |> investment_returns(0.01)
    |> print('$')
  end

  def investment_returns(amt, interest_rate) do
    amt + (interest_rate/100)*amt
  end

  def print(amt, currency) do
    IO.puts "Your current balance is:  US #{currency} #{amt}"
  end
end

Account.balance(1000, 80)
