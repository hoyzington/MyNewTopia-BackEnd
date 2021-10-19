# frozen_string_literal: true

require 'csv'

CSV.foreach('MSAs.csv') do |msa|
  Msa.create(
    code: msa[0].to_i,
    name: msa[1].split(',')[0],
    states: msa[2..5].compact.join(', '),
    zone: msa[6],
    pop: msa[7].split(',').join.to_i,
    wage: msa[8].to_f,
    unemp: msa[9].to_f,
    heat: msa[10].to_i,
    cold: msa[11].to_f,
    precip: msa[12].to_f,
    snow: msa[13].to_f,
    aqi: msa[14].to_f
  )
end
