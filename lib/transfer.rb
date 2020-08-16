require "pry"

class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(payee, recipient, amount)
    @sender = payee
    @receiver = recipient
    @amount = amount
    @status = "pending"
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end
  def execute_transaction
    counter = 0
    while counter < 1
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
      # binding.pry
      counter += 1
    end
  end
end
