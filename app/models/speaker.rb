class Speaker
  TWITTER_URL = "https://twitter.com/"
  GITHUB_URL = "https://github.com/"
  KEYNOTE_SPEAKERS = [:matz, :tenderlove, :apotonick, :betsyhaibel, :amatsuda, :emilystolfo]

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
          :tagline  => "CRuby Core<br/>Founder of Asakusa.rb",
          :twitter  => "a_matsuda",
          :github   => "amatsuda",
          :topic    => "Keynote"
        },
      emilystolfo:
        {
          :id       => :emilystolfo,
          :name     => "Emily Stolfo",
          :avatar   => "speakers/emilystolfo.png",
          :tagline  => "Senior Software Engineer<br/>Ruby Project Lead, MongoDB, Inc.",
          :twitter  => "EmStolfo",
          :github   => "estolfo",
          :topic    => "Keynote"
        },
      timriley:
        {
          id: :timriley,
          name: "Tim Riley",
          avatar: "speakers/timriley.png",
          tagline: "",
          twitter: "timriley",
          github: "",
          bio: "",
          topic: "Functional Architecture for the Practical Rubyist",
          description: ""
        },
      bovensiepen:
        {
          id: :bovensiepen,
          name: "Daniel Bovensiepen",
          avatar: "speakers/bovensiepen.png",
          tagline: "",
          twitter: "bovensiepen",
          github: "",
          bio: "",
          topic: "Ruby on Wheelchair",
          description: ""
        },
      junqitan:
        {
          id: :junqitan,
          name: "Jun Qi Tan",
          avatar: "speakers/junqitan.png",
          tagline: "",
          twitter: "",
          github: "",
          bio: "",
          topic: "All I'd Wanted to Know about Ruby's Object Model",
          description: ""
        },
      laurent:
        {
          id: :laurent,
          name: "Laurent Sansonetti",
          avatar: "speakers/laurent.png",
          tagline: "",
          twitter: "lrz",
          github: "",
          bio: "",
          topic: "Profiling Ruby Applications, the Right Way",
          description: ""
        },
      juanitofatas:
        {
          id: :juanitofatas,
          name: "Juanito Fatas",
          avatar: "speakers/juanitofatas.png",
          tagline: "",
          twitter: "JuanitoFatas",
          github: "",
          bio: "",
          topic: "Data Migration With Confidence",
          description: ""
        },
      florian:
        {
          id: :florian,
          name: "Florian Weingarten",
          avatar: "speakers/florian.png",
          tagline: "",
          twitter: "fw1729",
          github: "",
          bio: "",
          topic: "Shitlist Driven Development",
          description: ""
        },
      matadon:
        {
          id: :matadon,
          name: "Don Werve",
          avatar: "speakers/matadon.png",
          tagline: "",
          twitter: "matadon",
          github: "",
          bio: "",
          topic: "To Code is Human",
          description: ""
        },
      lauranobilis:
        {
          id: :lauranobilis,
          name: "Laura Eck",
          avatar: "speakers/lauranobilis.png",
          tagline: "",
          twitter: "laura_nobilis",
          github: "",
          bio: "",
          topic: "Writing Better Errors",
          description: ""
        },
      weiqingtoh:
        {
          id: :weiqingtoh,
          name: "Weiqing Toh",
          avatar: "speakers/weiqingtoh.png",
          tagline: "",
          twitter: "weiqingtoh",
          github: "",
          bio: "",
          topic: "Meta-programming for Dummies",
          description: ""
        },
      antondavydov:
        {
          id: :antondavydov,
          name: "Anton Davydov",
          avatar: "speakers/antondavydov.png",
          tagline: "",
          twitter: "anton_davydov",
          github: "",
          bio: "",
          topic: "Hanami - New Ruby Web Framework",
          description: ""
        },
      marion:
        {
          id: :marion,
          name: "Marion Schleifer",
          avatar: "speakers/marion.png",
          tagline: "",
          twitter: "rubydwarf",
          github: "",
          bio: "",
          topic: "Plan of action: we need more women in programming!",
          description: ""
        },
      ankitagupta:
        {
          id: :ankitagupta,
          name: "Ankita Gupta",
          avatar: "speakers/ankitagupta.png",
          tagline: "",
          twitter: "",
          github: "",
          bio: "",
          topic: "Spinning up micro-services using Ruby/Kafka",
          description: ""
        },
      jinnywong:
        {
          id: :jinnywong,
          name: "Jinny Wong",
          avatar: "speakers/jinnywong.png",
          tagline: "",
          twitter: "shujinh",
          github: "",
          bio: "",
          topic: "One Blind Weekend",
          description: ""
        },
      takayuki:
        {
          id: :takayuki,
          name: "Takayuki Matsubara",
          avatar: "speakers/takayuki.png",
          tagline: "",
          twitter: "ma2ge",
          github: "",
          bio: "",
          topic: "One Way to Encourage the Open Source Community",
          description: ""
        }
    }
  end
end
