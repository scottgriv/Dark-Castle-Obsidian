#
# In a land shrouded in mystery...
#

class DarkCastle
  def initialize(opts)
    @name = opts[:name]
    @construction_year = opts[:construction_year]
    @destruction_year = opts[:destruction_year]
    @features = opts[:features]
  end

  def duration
    calc_duration
  end

  private

  def calc_duration
    @destruction_year - @construction_year
  end
end

# ...there stood a Dark Castle

moonshadow_fortress = DarkCastle.new(
  name: 'Moonshadow Fortress',
  construction_year: 980,
  destruction_year: 1503,
  features: %w[Eerie\ Glow High\ Battlements]
)

puts "The duration of #{moonshadow_fortress.instance_variable_get(:@name)} was #{moonshadow_fortress.duration} years."
