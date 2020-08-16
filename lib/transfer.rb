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
  def execute_transcation
  end
end
