require 'task_helpers/import_helpers'
DATASET_URL = 'https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data'.freeze

h = ImportHelpers

namespace :dataset do
  desc 'Import and process the mushrooms dataset'
  task import: :environment do
    warn 'Reading the dataset...'
    doc = Nokogiri::HTML(open(DATASET_URL))
    warn 'Spliting up the dataset into lines...'
    dataset = doc.xpath('/html/body/p/text()').to_s
    dataset.split("\n").each_with_index do |line, i|
      warn "Processeing line ##{i + 1}..."
      l = line.split(',')
      attributes = {
        identifier: "#{i}##{l.join}",
        edible: h.edible(l[0]),
        cap_shape: h.cap_shape(l[1]),
        cap_surface: h.cap_surface(l[2]),
        cap_color: h.cap_color(l[3]),
        bruiser: h.bruises?(l[4]),
        odor: h.odor(l[5]),
        gill_attachment: h.gill_attachment(l[6]),
        gill_spacing: h.gill_spacing(l[7]),
        gill_size: h.gill_size(l[8]),
        gill_color: h.gill_color(l[9]),
        stalk_shape: h.stalk_shape(l[10]),
        stalk_root: h.stalk_root(l[11]),
        stalk_surface_above_ring: h.stalk_surface_above_ring(l[12]),
        stalk_surface_below_ring: h.stalk_surface_below_ring(l[13]),
        stalk_color_above_ring: h.stalk_color_above_ring(l[14]),
        stalk_color_below_ring: h.stalk_color_below_ring(l[15]),
        veil_type: h.veil_type(l[16]),
        veil_color: h.veil_color(l[17]),
        ring_number: h.ring_number(l[18]),
        ring_type: h.ring_type(l[19]),
        spore_print_color: h.spore_print_color(l[20]),
        population: h.population(l[21]),
        habitat: h.habitat(l[22])
      }
      warn "Saving mushroom ##{i + 1}..."
      Mushroom.create!(attributes)
      warn "🍄 Mushroom ##{i + 1} saved!..."
    end
    warn '✅ IMPORTED ALL MUSHROOMS!'
  end
end
