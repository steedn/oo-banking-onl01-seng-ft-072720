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
    @sender.valid? && @receiver.valid? && @sender.balance > @amount
  end
  def execute_transaction
    if valid?!
      @status = "rejected"
    elsif
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end
end
