class Track
  def initialize(file, default)
    @file = file
    @default = default
  end

  def src
    @file
  end

  def default?
    @default
  end

  def label
    case File.basename(@file)
    when 'mac.vtt'
      'Mac'
    when 'linux.vtt'
      'Linux'
    when 'win.vtt'
      'Windows'
    when 'other.vtt'
      'Linux/Windows'
    when 'all.vtt'
      'Todos'
    end
  end
end
