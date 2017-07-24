require 'pdf-reader'

reader = PDF::Reader.new('input/0_INTERPRETAÇÃO_PROGRAMA_OFFICIAL.pdf')

reader.pages.each do |p|
  lines = p.text.split("\n").reject { |l| l.empty? }
  lines.each { |l| puts l }
end

