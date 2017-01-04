class Speaker
  TWITTER_URL = "https://twitter.com/"
  GITHUB_URL = "https://github.com/"
  KEYNOTE_SPEAKERS = [:matz, :tenderlove, :apotonick, :betsyhaibel, :amatsuda]

  def self.all
    speakers.values.map { |speaker| OpenStruct.new(speaker) }
  end

  def self.find(identifier)
    OpenStruct.new speakers.fetch(identifier)
  end

  def self.find_by_identifiers(*identifiers)
    identifiers.map { |identifier| self.find(identifier) }
  end

  def self.speakers
    {
      matz:
        {
          :id       => :matz,
          :name     => "Yukihiro (Matz) Matsumoto",
          :avatar   => "speakers/matz.png",
          :tagline  => "Creator of Ruby, Heroku",
          :twitter  => "yukihiro_matz",
          :github   => "matz",
          :topic    => "Keynote"
        },
      tenderlove:
        {
          :id       => :tenderlove,
          :name     => "Aaron Patterson",
          :avatar   => "speakers/tenderlove.png",
          :tagline  => "Ruby & Rails Core, GitHub",
          :twitter  => "tenderlove",
          :github   => "tenderlove",
          :topic    => "Keynote"
        },
      apotonick:
        {
          :id       => :apotonick,
          :name     => "Nick Sutterer",
          :avatar   => "speakers/apotonick.png",
          :tagline  => "Creator of Trailblazer",
          :twitter  => "apotonick",
          :github   => "apotonick",
          :topic    => "Keynote"
        },
      betsyhaibel:
        {
          :id       => :betsyhaibel,
          :name     => "Betsy Haibel",
          :avatar   => "speakers/betsyhaibel.png",
          :tagline  => "Lead Software Architect, Roostify<br/>RailsGirls DC mentor",
          :twitter  => "betsythemuffin",
          :github   => "bhaibel",
          :topic    => "Keynote"
        },
      amatsuda:
        {
          :id       => :amatsuda,
          :name     => "Akira Matsuda",
          :avatar   => "speakers/amatsuda.png",
          :tagline  => "CRuby Core. Founder of Asakusa.rb",
          :twitter  => "a_matsuda",
          :github   => "amatsuda",
          :topic    => "Keynote"
        }
    }
  end
end
