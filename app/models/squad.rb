# frozen_string_literal: true

class Squad
  def self.generate_squads(number_of_squads)
    waitlist = Player.all.sort_by(&:average_skill).reverse

    squads = []

    if number_of_squads.positive?
      squad_size = (waitlist.size / number_of_squads)

      squad_size.times.each do |_p|
        number_of_squads.times.each do |index|
          if squads[index].blank?
            squad = Squad.new
            squads[index] = squad
          end

          squads[index].add_player(waitlist.shift)
        end
      end
    end

    [waitlist, squads]
  end

  def initialize(players = [])
    @players = players
  end

  def add_player(player)
    @players << player
  end

  attr_reader :players

  def average_skating
    @players.sum(&:skating) / @players.size
  end

  def average_shooting
    @players.sum(&:shooting) / @players.size
  end

  def average_checking
    @players.sum(&:checking) / @players.size
  end
end
