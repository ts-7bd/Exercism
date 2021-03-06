defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @orbital_period_earth 3600 * 24 * 365.25

  @orbital_period_to_earth %{
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1.000000,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    earth_years = seconds / @orbital_period_earth
    earth_years / @orbital_period_to_earth[planet]
  end
end
