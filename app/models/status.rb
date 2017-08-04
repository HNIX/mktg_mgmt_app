class Status

  STATUSES = [:active, :complete]

  def self.options
    STATUSES.map { |status| [status.capitalize, status] }
  end

end
