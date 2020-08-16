class Transfer
  attr_accessor :sender
  def initialize(payee, recipient, amount)
    @sender = payee
  end
end
