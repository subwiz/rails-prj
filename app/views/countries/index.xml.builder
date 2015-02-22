require 'active_support/builder' unless defined?(Builder)

xml.instruct!
xml.countries do
  @countries.each do |country|
    xml.country do
      xml.id(country.id)
      xml.name(country.name)
      xml.population(country.population)
    end
  end
end
