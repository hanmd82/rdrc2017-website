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
          description: "We build our Ruby apps with the best of intentions, but it's all too easy for them to become tangled and hard to maintain. If you've reached for object-oriented design principles as your path forward, and found them elusive or hard to apply, there is still hope! It turns out that some of our best OO code may live behind an FP curtain. Come along and discover how a functional architecture can make your Ruby apps not only SOLID, but a real joy to build, test, and extend."

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
          description: "What would you do if you end up in a Wheelchair after an accident and you are not satisfied with the feature-set of the chair? You could buy a better one... Or you put Ruby on it and add the features you are missing. This talk will show you how you can hack your Wheelchair by using mruby, Microcontrollers and many other things never seen on a Wheelchair before. Let's put Ruby on a Wheelchair!"
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
          topic: "All I'd Wanted to Know about Ruby's Object Model Starting Out...and Mooar!!!",
          description: "One of the most fun yet confusing things about Ruby is its object model. It's something that can seem highly cryptic to beginners, and perhaps not even that well understood by experienced Rubyists. Not too far into my Ruby journey, I began to get a taste of metaprogramming, but even as I learnt and grew more familiar with common idioms, I always had a nagging feeling that my underlying mental model didn't quite cut it, so I decided to iron it out. The more I read, the more intrigued I became, until I ended up diving into the CRuby source itself! Here's the story of what I learnt about Ruby's object model, in a way that's both digestible for beginner/intermediates and also insightful for the more experienced. It will also be the story of my journey from feeling like a newbie lacking confidence in my ability to understand something as complex as CRuby, to taking the plunge and learning how to fearlessly read the source!"
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
          description: "We all love Ruby because of its conciseness, its elegant syntax allows us to write beautiful code abstractions. But this comes with a double-edged sword; it is easier to introduce performance regressions in our codebase when we do not master all the layers. In this presentation we will study the proper way to profile software, to measure CPU and memory usage of a given process. We will examine techniques used by commercial industry profilers and then see how to apply them to the Ruby world.  This will be a very technical talk with several demos."
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
          description: "Finally convinced your new client to switch from X to Rails? Did your company acquire a non-rails site? Then you probably need to migrate their data to your existing system. In this talk, I will share some false starts, lessons, tips, optimisations and decisions from a recent data migration I performed. How to migrate large amount of photos and records? What tools will you need and how to test the data migration. What do you need to do before & after the data migration. What I tried and how I migrated large amounts of data while kept the site up and running."
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
          topic: "Shitlist-driven development and other tricks for working on large codebases",
          description: "Working on large codebases is hard. Doing so with 700 people is even harder. Deploying it 50 times a day is almost impossible. We will look at productivity tricks and automations that we use at Shopify to get stuff done. We will learn how we fix the engine while the plane is running, how to quickly change code that lots of people depend on, how to automatically track down productivity killers like unreliable tests, how to maintain a level of agility that keeps developers happy and allows them to ship fast, and most importantly what the heck a \"shitlist\" is."
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
          description: "Programming is a deeply mental art. And as programmers, we invest large amounts of time in mastering new languages and new tools. But all too often, we neglect understanding of the most important tool in the developer's toolbox: the programmer's brain itself. In this talk, we will combine the art of programming with the science of cognitive psychology, and emerge with a deeper understanding of how to leverage the limits of the human mind to sustainably craft software that is less buggy, easier to understand, and more adaptive in the face of change."
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
          description: "At their core, all errors trigger the same question, no matter who encounters them: What went wrong, and how do I make it work? At the same time, every error has specific target audiences that are interested in answering exactly that question - but possibly in very different ways. In this talk, we will explore how to design errors so they give each stakeholder the information they need to fix the issue at hand, and how we can use them to make our software even better. Errors might never be something you look forward to seeing - but when they crash your party, they'll at least know how to chat with the guests."
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
          description: "The construct of the Ruby language allows for meta-programming, or 'code which modifies code at runtime'. However, meta-programming is a double-edged sword; as much as it is useful, it could very easily be misused by teams as well. In this talk, I will cover the benefits of meta-programming and some (basic) fundamentals (in the context of Ruby on Rails) and discuss pitfalls, anti-patterns, and considerations by teams before adopting meta-programming. Don't worry, this is easily digestible for rubyists of all levels!"
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
          description: "Hanami is quite new and interesting framework which you are unlikely to write complex applications. But this does not mean that this framework is not worth your attention. Besides old approaches, you can also find new interesting solutions. In my presentation, I'm going to talk about Hanami framework and why you should look on this. We give consideration about advantages and disadvantages. And also I talk about future with Hanami."
        },
      vaidehijoshi:
        {
          id: :vaidehijoshi,
          name: "Vaidehi Joshi",
          avatar: "speakers/vaidehijoshi.png",
          tagline: "",
          twitter: "vaidehijoshi",
          github: "",
          bio: "",
          topic: "Goldilocks and the Three Code Reviews",
          description: "Once upon a time, Goldilocks had a couple extra minutes to spare before morning standup. She logged into Github and saw that there were three pull requests waiting for her to review. We’ve probably all heard that peer code reviews can do wonders to a codebase. But not all type of code reviews are effective. Some of them seem to go on and on forever, while others pick at syntax and formatting but miss bugs. This talk explores what makes a strong code review and what makes a painful one. Join Goldilocks as she seeks to find a code review process that’s neither too long nor too short, but just right!"
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
          description: "It is no news that there are not enough women in programming. As a (female) career changer, I know how a lot of people (and especially women) think about programming. I am now a Ruby programmer and programming is completely different than i imagined it would be. And I love it! Therefore, I am putting a lot of my time and energy into educating women about programming. I want to talk about why we don't have enough women in programming, why we need more, and what we all can do to achieve that goal."
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
          description: "As organisations get bigger, handling large application(s) gets harder - long release and test cycles, higher chances of a small change affecting other parts of the system. Micro-services solve some of these problems, albeit with their own set of challenges. Apache Kafka allows setting up event-driven architectures, wherein the concern of each service can be cleanly separated, and communication among services can happen asynchronously. The transition form a large rails application to smaller applications can be made more seamless with a few easy steps. I will be elaborating steps developers can take to make this process easier."
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
          description: "This talk is about the time when I was temporarily blind for a weekend, and how suddenly, web accessibility became both a boon and an annoyance to me. In this lightning talk I share about what I went through while \"blind\", and tips to improve your website's accessibility in order to enable more people to easily access and use your website, regardless of ability."
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
          description: "From the conclusion, it is to put a star on projects at GitHub. I'm very happy someone putting a star on my project. So if you already put a star on any projects, it encourage the open source community. But have you put a star on projects developed as oss used in your project? All of them? This talk proposes a solution that activates open source community by putting a star on projects which you depend."
        }
    }
  end
end
