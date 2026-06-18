Article.destroy_all

expanded_articles = [
  { 
    title: "Amman Tech Summit 2026 Opens with Focus on Core AI Infrastructure", 
    content: "Local | 3 min read | The annual tech summit kicked off in Amman today, bringing together engineers and researchers from across the region to discuss scalable infrastructure, edge computing, and local cloud hosting solutions.", 
    author: "Rami Al-Abadi" 
  },
  { 
    title: "Tech Stocks Rally to All-Time Highs as AI Integrations Roll Out", 
    content: "Finance | 4 min read | Major tech companies see record market valuations this morning as advanced automated systems and large language model architectures roll out across enterprise software ecosystems.", 
    author: "Sarah Jenkins" 
  },
  { 
    title: "New Mars Rover Transmits First Deep-Space Telemetry Dataset", 
    content: "Space | 5 min read | The planetary exploration agency confirms a successful telemetry stream following an automated touchdown on the red planet's surface early this morning, marking a massive milestone.", 
    author: "Dr. Marcus Vance" 
  },
  { 
    title: "Local Team Secures Historic Championship Victory in Dramatic Overtime", 
    content: "Sports | 4 min read | In a stunning tactical upset, the local underdogs broke through the absolute best defensive line in the tournament to capture the gold trophy last night in a thrilling finish.", 
    author: "Alex Rivera" 
  },
  { 
    title: "Breakthrough in Clean Energy Commercialization and Solar Efficiency", 
    content: "Energy | 3 min read | Renewable laboratories announce a production-ready solar cell design operating at unprecedented energy capture efficiencies, cutting commercial installation costs dramatically.", 
    author: "Elena Rostova" 
  },
  { 
    title: "Global Weather Notice: Severe Seasonal Heatwave Enters Region", 
    content: "Weather | 2 min read | Atmospheric tracking models point to record-breaking temperature levels climbing steadily across the region this upcoming weekend. Public health agencies urge residents to stay hydrated.", 
    author: "Staff Reporter" 
  },
  { 
    title: "Peer-Reviewed Study Reveals Surprising Memory Enhancement Methods", 
    content: "Health | 6 min read | Clinical neuroscience trials published today report that controlled, daily organic antioxidant consumption yields distinct visual memory retention improvements over long testing intervals.", 
    author: "Dr. Julian Finch" 
  },
  { 
    title: "Electric Aerospace Prototype Completes Short-Range Trial Flights", 
    content: "Tech | 4 min read | A startup engineering team finalized short-range trial flights of their regional battery-powered aircraft today, opening up clear paths for emission-free commuting options.", 
    author: "Liam Vance" 
  },
  { 
    title: "Oceanic Deep-Sea Expedition Discovers Pristine Coral Ecosystems", 
    content: "Environment | 5 min read | Deep marine tracking technology has mapped an extensive, untouched sub-tropical reef system hidden deep within under-explored sub-tropical oceanic trenches.", 
    author: "Prof. Clara Diaz" 
  },
  { 
    title: "Cybersecurity Protocol Enacts Critical Nationwide Server Upgrades", 
    content: "Tech | 3 min read | Network administrators deployed an updated distributed encryption ledger standard early this morning to defend banking databases from complex quantum decryption attempts.", 
    author: "Sarah Jenkins" 
  },
  { 
    title: "Quantum Computing Lab Announces 1000-Qubit Error-Corrected Processor", 
    content: "Tech | 5 min read | Quantum physicists have broken records by stabilizing a high-density processing unit capable of running continuous error-corrected calculations without thermal interference.", 
    author: "Dr. Julian Finch" 
  },
  { 
    title: "Renewable Hydrogen Plant Begins Construction Near Coastal Industrial Hub", 
    content: "Energy | 4 min read | Developers broke ground on a massive clean-energy facility designed to synthesize green hydrogen at scale, aiming to fuel heavy commercial cargo fleets by next year.", 
    author: "Elena Rostova" 
  },
  { 
    title: "Amman Public Transit System Integrates Smart Contactless Fleet Tracking", 
    content: "Local | 3 min read | Commuters in Amman will now experience reduced wait times as municipal routers deploy real-time geographic vehicle loops and automated smart ticketing across all main transit lines.", 
    author: "Rami Al-Abadi" 
  },
  { 
    title: "Biomedical Engineering Team standardizes Lab-Grown Corneal Implants", 
    content: "Science | 6 min read | Clinical trials concluded successfully for synthetic biological tissue configurations, offering immediate, affordable corrective options for patients suffering from vision loss.", 
    author: "Dr. Marcus Vance" 
  },
  { 
    title: "Deep Space Telescope Detects Atmospheric Anomalies on Nearby Exoplanet", 
    content: "Space | 5 min read | Spectral data arrays picked up high concentrations of water vapor and carbon molecules inside the atmospheric shell of a planet orbiting a neighboring solar system.", 
    author: "Prof. Clara Diaz" 
  }
]

expanded_articles.each do |data|
  Article.create!(
    title: data[:title],
    content: data[:content],
    author: data[:author]
  )
end

puts "Successfully seeded #{Article.count} upgraded articles into the database!"