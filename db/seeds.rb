Article.destroy_all

expanded_articles = [
  { 
    title: "BREAKING: Amman Crowned Middle East's Next Silicon Valley as Tech Summit Launches Core AI Infrastructure", 
    content: "Local | 3 min read | Tech history is being made right now. The annual Amman Tech Summit officially kicked off today, drawing global engineers and pioneering researchers to build out the region's massive new edge computing and sovereign local cloud ecosystems.", 
    author: "Rami Al-Abadi",
    image_url: "https://images.unsplash.com/photo-1511578314322-379afb476865?auto=format&fit=crop&w=800&q=80",
    url: "https://images.unsplash.com/photo-1511578314322-379afb476865?auto=format&fit=crop&w=800&q=80"
  },
  { 
    title: "MARKET RALLY: Tech Stocks Explode to All-Time Highs Following Massive AI Enterprise Rollouts", 
    content: "Finance | 4 min read | Wall Street is in absolute frenzy this morning. Stock valuations are tearing through record highs as enterprise giants deploy next-generation LLM architectures across millions of software systems worldwide.", 
    author: "Sarah Jenkins",
    image_url: "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?auto=format&fit=crop&w=800&q=80",
    url: "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?auto=format&fit=crop&w=800&q=80"
  },
  { 
  "title": "SPACE MILESTONE: Jordan’s Space Research Hub Transmits Historic Deep-Space Telemetry Dataset from Wadi Rum", 
  "content": "Space | 5 min read | Jordan has taken a massive leap into the future of planetary exploration. Following a flawless automated deployment early this morning in the desert of Wadi Rum, the Jordan Space Research Initiative (JSRI) confirmed a perfect live stream of deep-space analog telemetry data, marking a historic step for the Kingdom's growing space ecosystem.", 
  "author": "Dr. Layla Shaker",
  "image_url": "https://images.unsplash.com/photo-1547119957-637f8679db1e?auto=format&fit=crop&w=800&q=80",
  "url": "https://www.jsri.space/analog-missions"
  },
  { 
  "title": "MIRACLE IN AMMAN: Al-Nashama Defies the Odds to Secure Historic Victory in Epic Extra-Time Thriller", 
  "content": "Sports | 4 min read | In what local fans are already calling the upset of the decade, Jordan's national football team shattered the tournament’s best defensive line last night at the Amman International Stadium, locking down an unforgettable victory in front of a roaring home crowd.", 
  "author": "Tariq Mansour",
  "image_url": "https://backend.royanews.tv/imageserv/Size728Q70/english/news/20251203/693087b17bf951764788145.jpg",
  "url": "https://en.royanews.tv/news/65438/VIDEO%3A-Jordan%E2%80%99s-Al-Nashama-defeat-UAE-in-thrilling-FIFA-Arab-Cup-opener"
  },
  { 
    title: "ENERGY REVOLUTION: Breakthrough Solar Cell Achieves Unprecedented Efficiency to Slash Commercial Costs", 
    content: "Energy | 3 min read | Renewable energy labs have officially cracked the code on solar commercialization. A newly unveiled, production-ready solar cell design maximizes capture efficiencies, poised to cut installation costs overnight.", 
    author: "Elena Rostova",
    image_url: "https://images.unsplash.com/photo-1508514177221-188b1cf16e9d?auto=format&fit=crop&w=800&q=80",
    url: "https://images.unsplash.com/photo-1508514177221-188b1cf16e9d?auto=format&fit=crop&w=800&q=80"
  },
  { 
  "title": "RED ALERT: Severe, Record-Breaking Heatwave Slams Jordan—Civil Defense Issues Emergency Warnings", 
  "content": "Weather | 2 min read | Brace yourselves, Kingdom. The Jordan Meteorological Department (JMD) is warning of an unprecedented heat dome moving in this weekend, pushing temperatures in Amman past 42°C and sending the Jordan Valley and Aqaba to near-record highs. Authorities urge immediate hydration and strictly advise avoiding direct sunlight during peak hours.", 
  "author": "Staff Reporter",
  "image_url": "https://jordanselect.com/wp-content/uploads/2026/06/featured-image-scaled.png", 
  "url": "https://jordanselect.com/jordan-summer-vs-europe-heatwave/"
  },
  { 
    title: "UNLOCK YOUR BRAIN: Clinical Neuroscience Study Uncovers Surprising Daily Method to Supercharge Memory Retention", 
    content: "Health | 6 min read | Boosting your cognitive performance might be simpler than you think. Peer-reviewed neuroscience trials published today confirm that specific daily organic antioxidant intake yields massive improvements in visual memory.", 
    author: "Dr. Julian Finch",
    image_url: "https://images.unsplash.com/photo-1559757175-5700dde675bc?auto=format&fit=crop&w=800&q=80",
    url: "https://images.unsplash.com/photo-1559757175-5700dde675bc?auto=format&fit=crop&w=800&q=80"
  },
  { 
  "title": "THE FUTURE OF FLIGHT: Next-Gen Electric Aerospace Prototype Completes Flawless Trial Flight Between Amman and Aqaba", 
  "content": "Aviation & Tech | 4 min read | Zero-emission regional travel is closer than ever to the Levant. In a landmark collaboration with local civil aviation authorities, an innovative aerospace venture successfully finalized short-range trial flights of its highly anticipated battery-powered regional aircraft over Jordanian airspace today, charting a path toward sustainable domestic travel.", 
  "author": "Faris Al-Kourd",
  "image_url": "https://blog.wego.com/wp-content/uploads/royal-jordanian-aircraft-airport-runway.jpg",
  "url": "https://blog.wego.com/royal-jordanian-amman-vienna-flights/"
  },
  { 
    title: "DEEP SEA WONDER: Marine Expedition Discovers Massive, Untouched Pristine Coral Reef Ecosystem Hidden in Oceanic Trench", 
    content: "Environment | 5 min read | In a breathtaking discovery, advanced marine tracking tech has mapped a sprawling, completely untouched sub-tropical reef thriving deep within an unexplored ocean trench.", 
    author: "Prof. Clara Diaz",
    image_url: "https://images.unsplash.com/photo-1544551763-46a013bb70d5?auto=format&fit=crop&w=800&q=80",
    url: "https://images.unsplash.com/photo-1544551763-46a013bb70d5?auto=format&fit=crop&w=800&q=80"
  },
  { 
  "title": "THE QUANTUM LEAP: Jordanian Tech University Co-Stabilizes Historic 1,000-Qubit Error-Corrected Processor", 
  "content": "Tech & Innovation | 5 min read | Computing has shifted forever. In an elite global research partnership, computer scientists from the Princess Sumaya University for Technology (PSUT) have successfully helped stabilize a high-density, 1,000-qubit processing unit capable of running intricate calculations with zero thermal interference, setting a milestone for the region's tech landscape.", 
  "author": "Dr. Samer Khoury",
  "image_url": "https://www.psut.edu.jo/uploads/2023/05/for-the-banner-edited-1500x355.jpg",
  "url": "https://www.psut.edu.jo/en/department/computer-graphics-and-animation"
  },
  { 
  "title": "QUANTUM SHIELD ACTIVATED: Central Bank of Jordan Enacts Advanced Quantum-Resistant Cyber Defenses", 
  "content": "Tech & Finance | 3 min read | In a proactive move to secure the Kingdom's financial system, the National Cyber Security Center (NCSC) in coordination with the Central Bank of Jordan initiated a sweeping upgrade this morning, deploying next-generation distributed encryption ledgers across all local banking databases to defend against quantum decryption threats.", 
  "author": "Rayan Al-Abdullah",
  "image_url": "https://www.cbj.gov.jo/EBV4.0/Root_Storage/AR/%D8%A7%D9%84%D8%A8%D9%86%D9%83.jpg",
  "url": "https://www.cbj.gov.jo/EN/Pages/Central_Bank_of_Jordan_A_Brief_Outlook"
  },
  { 
  "title": "GOING GREEN: Massive Clean-Energy Hydrogen Plant Breaks Ground in Aqaba Industrial Hub", 
  "content": "Energy | 4 min read | Developers officially broke ground today on a historic facility within the Aqaba Special Economic Zone built to synthesize green hydrogen at a massive scale. Powered by Jordan's expansive southern solar infrastructure, the project plans to completely fuel heavy commercial cargo fleets and maritime logistics by next year.", 
  "author": "Yousef Al-Momani",
  "image_url": "https://www.hydrogeninforms.com/wp-content/uploads/2026/05/Aqaba-Green-Ammonia-and-Hydrogen-Plant.webp",
  "url": "https://www.hydrogeninforms.com/news/1bn-deal-to-build-aqaba-green-ammonia-and-hydrogen-plant/"
  },
  { 
    title: "SMART TRANSIT: Amman Upgrades City Buses with Real-Time Smart Tracking and Contactless Fleet Tech", 
    content: "Local | 3 min read | Say goodbye to long transit delays. Commuters in Amman will now experience drastically reduced wait times as municipal routers deploy real-time vehicle loops and instant ticketing across all main lines.", 
    author: "Rami Al-Abadi",
    image_url: "https://images.unsplash.com/photo-1570125909232-eb263c188f7e?auto=format&fit=crop&w=800&q=80",
    url: "https://images.unsplash.com/photo-1570125909232-eb263c188f7e?auto=format&fit=crop&w=800&q=80"
  },
  { 
  "title": "AMMAN MEDICAL BREAKTHROUGH: Jordanian Surgical Team Completes Kingdom’s First Successful Synthetic Corneal Implant", 
  "content": "Health & Innovation | 6 min read | History was made at a leading medical hub in Amman this week as a team of Jordanian ophthalmologists successfully transplanted a synthetic lab-grown cornea into a local patient. The groundbreaking, minimally invasive procedure offers an immediate, affordable alternative to organic donor tissue, potentially wiping out the Kingdom's extensive waiting lists for vision restoration.", 
  "author": "Dr. Tariq Al-Saeed",
  "image_url": "https://www.specialty-hospital.com/uploads/images/services/1/156_69.JPG",
  "url": "https://www.specialty-hospital.com/en/services/36/Services/srv/59/32/Modern-Eye-Surgery"
  },
  { 
  "title": "SEARCH FOR LIFE: Jordanian Astronomical Society Highlights Historic Breakthrough as Telescope Finds Water on Nearby Exoplanet", 
  "content": "Space | 5 min read | The global astronomical community is buzzing after advanced spectral data arrays identified dense concentrations of water vapor spinning inside the atmosphere of a world in the habitable 'Goldilocks' zone. Commenting on the milestone, the Jordanian Astronomical Society (JAS) stated this brings humanity an unprecedented step closer to mapping potentially habitable alien worlds.", 
  "author": "Rania Al-Saeed",
  "image_url": "https://images.unsplash.com/photo-1451187580459-43490279c0fa?auto=format&fit=crop&w=800&q=80",
  "url": "https://jordantimes.com/news/features/nearby-exoplanet-could-be-first-known-ocean-world-%E2%80%94-webb-telescope"
  }
]

expanded_articles.each do |data|
  Article.create!(
    title: data[:title],
    content: data[:content],
    author: data[:author],
    image_url: data[:image_url],
    url: data[:url]
  )
end

puts "Successfully seeded #{Article.count} upgraded articles into the database!"