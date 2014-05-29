require_relative '../lib/track'

module Troy
  module Helpers
    def tracks_for_page(page)
      position = {
        'mac' => 0,
        'linux' => 1,
        'windows' => 2,
        'other' => 3,
        'all' => 4
      }

      Dir["./assets/media/#{page.id}/*.vtt"]
        .sort_by {|file| position[File.basename(file, '.vtt')] }
        .each_with_index.map {|file, index|
          Track.new(file.gsub('./assets', ''), index.zero?)
        }
    end

    def screencasts
      site.pages.select {|page| page.meta.layout == 'video' }
    end

    def url(path)
      File.join(*[ENV['HOST'], path].compact)
    end
  end
end
