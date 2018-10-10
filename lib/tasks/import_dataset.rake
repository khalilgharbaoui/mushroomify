require 'task_helpers/import_helpers'
DATASET_URL = 'https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data'.freeze

h = ImportHelpers::DATASET

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
        edible: h[:edible].key(l[0]).to_s,
        cap_shape: h[:cap_shape].key(l[1]).to_s,
        cap_surface: h[:cap_surface].key(l[2]).to_s,
        cap_color: h[:cap_color].key(l[3]).to_s,
        bruiser: h[:bruises?].key(l[4]).to_s,
        odor: h[:odor].key(l[5]).to_s,
        gill_attachment: h[:gill_attachment].key(l[6]).to_s,
        gill_spacing: h[:gill_spacing].key(l[7]).to_s,
        gill_size: h[:gill_size].key(l[8]).to_s,
        gill_color: h[:gill_color].key(l[9]).to_s,
        stalk_shape: h[:stalk_shape].key(l[10]).to_s,
        stalk_root: h[:stalk_root].key(l[11]).to_s,
        stalk_surface_above_ring: h[:stalk_surface_above_ring].key(l[12]).to_s,
        stalk_surface_below_ring: h[:stalk_surface_below_ring].key(l[13]).to_s,
        stalk_color_above_ring: h[:stalk_color_above_ring].key(l[14]).to_s,
        stalk_color_below_ring: h[:stalk_color_below_ring].key(l[15]).to_s,
        veil_type: h[:veil_type].key(l[16]).to_s,
        veil_color: h[:veil_color].key(l[17]).to_s,
        ring_number: h[:ring_number].key(l[18]).to_s,
        ring_type: h[:ring_type].key(l[19]).to_s,
        spore_print_color: h[:spore_print_color].key(l[20]).to_s,
        population: h[:population].key(l[21]).to_s,
        habitat: h[:habitat].key(l[22]).to_s
      }
      warn "Saving mushroom ##{i + 1}..."
      Mushroom.create!(attributes)
      warn "🍄 Mushroom ##{i + 1} saved!..."
    end
    warn '✅ IMPORTED ALL MUSHROOMS!'
  end
end
