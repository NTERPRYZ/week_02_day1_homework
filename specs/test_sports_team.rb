require ('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Real Madrid", ["Ronaldo", "Benzema", "Bale"], "Zidane")

  end

  def test_team_name
    assert_equal("Real Madrid", @team.team_name)
  end

  def test_players
    assert_equal(["Ronaldo", "Benzema", "Bale"], @team.players)
  end

  def test_coach
    assert_equal("Zidane", @team.coach)
  end

  def test_set_coach_name
    @team.set_coach_name("Alex Ferguson")
    assert_equal("Alex Ferguson", @team.coach)
  end


end
