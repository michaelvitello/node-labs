puts 'Cleaning database...'

puts 'Creating categories...'

[Computer, Order, Spec, Component, Category, User, GameCategory, ComponentGameCategory].each(&:destroy_all)

categories_attributes = [
  {
    display_name: 'Cases',
    slug: "cases",
  },
  {
    display_name: 'Motherboards',
    slug: "motherboards",
  },
  {
    display_name: 'Processors',
    slug: "processors",
  },
  {
    display_name: 'Memory',
    slug: "memory",
  },
  {
    display_name: 'Power Supply',
    slug: "power_supply",
  },
  {
    display_name: 'Storage',
    slug: "storage",
  },
  {
    display_name: 'Graphic Cards',
    slug: "graphic_cards",
  },
  {
    display_name: 'CPU Coolers',
    slug: "cpu_coolers",
  },
  {
    display_name: 'Case Cooling',
    slug: "case_cooling",
  },
  {
    display_name: 'Network Cards',
    slug: "network_cards",
  },
  {
    display_name: 'Sound Cards',
    slug: "sound_cards",
  },
  {
    display_name: 'Operating Systems',
    slug: "operating_systems",
  }
]

categories_attributes.each do |category|
  Category.create!(category)
end

puts 'Done'
puts 'Creating components...'

game_categories = [
  'FPS',
  'MOBA',
  'Action'
  ].each do |category|
    GameCategory.create!(name: category)
  end

components_attributes = [
  {
    name: 'ASRock B250M-Pro4 LGA 1151 Micro-ATX',
    description: 'ASRock’s board has a cut-down chipset and a middling set of features, but it’s enough to build all sorts of affordable and mid-range rigs – especially considering its price',
    category_slug: "motherboards",
    rating: 3,
    price: 99
  },
  {
    name: 'Gigabyte AORUS Z370 Gaming 5 LGA 1151-2 ATX',
    description: 'The AORUS Z370 enthusiast motherboards are faster and more powerful than any other motherboards the world has seen. With aggressively redesigned armor and thermal heatsinks, its performance capabilities and durability are second to none.',
    category_slug: "motherboards",
    rating: 2,
    price: 299
  },
  {
    name: 'ASUS ROG Maximus IX Hero',
    description: 'The ASUS ROG Maximus IX Hero is going to make an excellent base for a top-performance gaming computer if you have got an unlocked CPU. It offers all up-to-date technologies for your future high-end gaming configuration.',
    category_slug: "motherboards",
    rating: 1,
    price: 699
  },
  {
    name: 'Corsair Carbide Series SPEC-04 Tempered Glass',
    description: 'If you’re looking to save a few bucks, while still getting one of the best PC cases, look no further than the Corsair Carbide Series SPEC-04 Tempered Glass. Not only does it have plenty of space for airflow, it also has a deceptively large amount of space for future expansion',
    category_slug: "cases",
    rating: 3,
    price: 69
  },
  {
    name: 'Fractal Design Meshify-C',
    description: 'It is extremely rare to see any PC case that even vaguely resembles the Fractal Design Meshify-C. Given that the front of the case is entirely made of a mesh material sectioned off into an array of polygonal shapes, the Meshify-C has a unique style – without compromising on function.',
    category_slug: "cases",
    rating: 2,
    price: 129
  },
  {
    name: 'Cooler Master Cosmos C700P',
    description: 'It is the best full-tower PC Case and the the Cosmos C700P is, despite its thickness, flexible and beautiful, thanks to Cooler Master’s decision to implement full RGB lighting and support for six different system orientations.',
    category_slug: "cases",
    rating: 1,
    price: 399
  },
  {
    name: 'Intel Pentium Gold G5400',
    description: 'Suppose you are not planning on building the fastest gaming rig on the planet—you just want something that will not break the bank. The good news is that not only can you save money, you do not even have to sacrifice all the modern features in the process.',
    category_slug: "processors",
    rating: 3,
    price: 99
  },
  {
    name: 'Intel Core i5-7900X',
    description: 'It is easy to get caught lusting after the highest performing processors. But, this i5-7900X often beats the best other CPUs for gaming purposes. That is largely thanks to the cache hierarchy that delivers better latency. Even the latest Core i9 parts cannot top the i5-8400, at least without overclocking.',
    category_slug: "processors",
    rating: 2,
    price: 249
  },
  {
    name: 'Intel Core i7 8700K',
    description: 'It is currently the best gaming processor in the market for high-end performances. In fact, by offering faster frequencies across the board at stock speed and when overclocked, the Core i7-8700K is one of the best CPUs for lightly threaded applications and games as well.',
    category_slug: "processors",
    rating: 1,
    price: 499
  },
  {
    name: 'Corsair Vengeance LPX 8GB DDR4 2133MHz',
    description: 'RAM in the LPX series of Corsair Vengeance memory is made for users who want the maximum performance with minimum size. This low-profile RAM is essential for PC builds with massive CPU coolers and small budgets.',
    category_slug: "memory",
    rating: 3,
    price: 145
  },
  {
    name: 'Kingston HyperX Fury Black 16GB DDR4-2133',
    description: 'The HyperX Fury Black 16GB may not be the cheapest DDR4 memory bundle you can find, but in our opinion it holds great value when you’re on a budget. This particular kit comes in the lowest available DDR4 speed of 2133MHz, but as extensive testing has proven time and time again, higher speed RAM yields very little improvements when it comes to PC gaming.',
    category_slug: "memory",
    rating: 2,
    price: 249
  },
  {
    name: 'G.Skill Ripjaws V 32GB DDR4-3000',
    description: 'The G.Skill Ripjaws V is the second generation of the company’s DDR4 memory and it’s clear that they’ve listened to the feedback and criticisms from the customers. The new series is more affordable, faster and has been redesigned with a less tacky heatsink.',
    category_slug: "memory",
    rating: 1,
    price: 579
  },
  {
    name: 'EVGA 500 B1',
    description: 'It’s cool, quiet, reliable, and provides enough juice for a modest gaming PC. Spend the money you save on more RAM or a slightly faster graphics card.',
    category_slug: "power_supply",
    rating: 3,
    price: 94
  },
  {
    name: 'Corsair RM 750x',
    description: 'For just over $150, you can get an efficient and reliable power supply that will deliver more than enough juice for a modern gaming PC, even one with high-end components and a little modest overclocking.',
    category_slug: "power_supply",
    rating: 2,
    price: 175
  },
  {
    name: 'EVGA SuperNOVA 850 G3',
    description: 'EVGA has been just killing it in the power supply business lately, and the SuperNOVA G3 line is one of its best. For a pretty reasonable price you can get an 850-watt unit that is small, fully modular, 80 Plus Gold certified, and offers a whopping 10-year warranty.',
    category_slug: "power_supply",
    rating: 1,
    price: 229
  },
  {
    name: 'Seagate Barracuda 1TB',
    description: 'Old school Hard Drive that does its job very well, at the most affordable price. Look no further for your budget PC build!',
    category_slug: "storage",
    rating: 3,
    price: 89
  },
  {
    name: 'Crucial MX500 500GB',
    description: 'In terms of performance, the MX500 places in the upper ranks of SATA drives. Strong sequential throughput is part of the advantage, but it is no slouch at random workloads.',
    category_slug: "storage",
    rating: 2,
    price: 190
  },
  {
    name: 'Samsung 960 Evo 1TB',
    description: 'Samsung 960 Evo 1TB is a beast and it clearly pulls away from even the best SATA drives. It can read and write data at more than five times the speed of a SATA drive. You also get to avoid all the cable clutter as it is mounted directly on your motherboard.',
    category_slug: "storage",
    rating: 1,
    price: 544
  },
  {
    name: 'Radeon RX 560 4GB',
    description: 'The RX 560 4GB is not a high performance graphics card but it is very affordable. It is billed as a GPU suitable for lighter esports gaming, including CS:GO, LoL, and Overwatch. It can easily hit 60fps at 1080p in most games.',
    category_slug: "graphic_cards",
    rating: 3,
    price: 219
  },
  {
    name: 'GeForce GTX 1060 3GB',
    description: 'This graphic card is able to strike a balance between high performance and a reasonable price. It is probably the best choice for a mid-range gaming PC.',
    category_slug: "graphic_cards",
    rating: 2,
    price: 369
  },
  {
    name: 'GeForce GTX 1080 Ti',
    description: 'If you want the fastest graphics card on the planet, it is a no-brainer: the GeForce GTX 1080 Ti wins, hands down.',
    category_slug: "graphic_cards",
    rating: 1,
    price: 1279
  },
  {
    name: 'Cooler Master Hyper TX3 Evo',
    description: 'TA constant reminder of the age-old saying ‘if it ain’t broke, don’t fix it’, the Cooler Master Hyper is a mainstay in pretty much any budget build, as its one of the most affordable CPU coolers you can buy today.',
    category_slug: "cpu_coolers",
    rating: 3,
    price: 29
  },
  {
    name: 'Noctua NH-D15',
    description: 'The Noctua NH-D15 is one of the greatests for one compelling reason: it may not be a liquid cooler, but it can perform just as well as – if not better than – some all-in-one coolers.',
    category_slug: "cpu_coolers",
    rating: 2,
    price: 119
  },
  {
    name: 'NZXT Kraken X62',
    description: 'Known best for its cases, such as those produced in collaboration with Asus and Razer, you may be surprised to learn that NZXT’s CPU coolers are every bit as impressive as the hardware which encloses them.',
    category_slug: "cpu_coolers",
    rating: 1,
    price: 239
  },
  {
    name: 'Cooler Master Silent Fan SI2',
    description: 'All in all, this fan is ideal for users who do not much care about flashy visuals and just need a quiet and efficient solution to keep their system temperature under control.',
    category_slug: "case_cooling",
    rating: 3,
    price: 6
  },
  {
    name: 'Thermaltake Riing 12',
    description: 'Thermaltake combines the patented LED light with cutting-edge technology to deliver a brand new experience of using PC cooling',
    category_slug: "case_cooling",
    rating: 2,
    price: 45
  },
  {
    name: 'Watercooling - EK FLUID GAMING A240R',
    description: 'The EK Fluid Gaming A240R is a perfectly balanced liquid cooling kit. With its 240mm radiator, it brings silence to your gaming environment, and provides enough headroom for overclocking!',
    category_slug: "case_cooling",
    rating: 1,
    price: 239
  },
  {
    name: 'Ethernet - Rosewill RC-411v2',
    description: 'Recommended by PC enthusiasts globally, Rosewill RC-411v2 is a dependable PCIE PCI Express gigabit network card. Its plug and use adapter is not only durable but also easy to use.',
    category_slug: "network_cards",
    rating: 3,
    price: 6
  },
  {
    name: 'Ethernet - Intel Gigabit CT PCI-E',
    description: 'Made of high-grade components, Intel Gigabit CT PCI-E is a durable product with many desirable attributes. The auto-negation technology that buyers get, for instance, maintains the highest available network speed (10/100/1000Mbps) automatically.',
    category_slug: "network_cards",
    rating: 2,
    price: 45
  },
  {
    name: 'WiFi - TP-LINK TL-WDN4800',
    description: 'With TP-LINK TL-WDN4800, you get a durable dual-band N900 PCI adapter (450Mbps at 2.4GHz and 450Mbps at 5.0GHz) with a low-profile bracket. It fits comfortably into most computers (universal).',
    category_slug: "network_cards",
    rating: 1,
    price: 49
  },
  {
    name: 'Creative Sound Blaster Audigy FX',
    description: 'If spending a lot or even a little on a sound card isn’t your cup of tea, the Creative Sound Blaster Audigy FX is exactly what you need. The bang for your buck offers a 5.1 surround sound that’s truly immersive and helps easily turn your PC into a cinematic-friendly entertainment system.',
    category_slug: "sound_cards",
    rating: 3,
    price: 65
  },
  {
    name: 'Asus Xonar DSX PCIe 7.1',
    description: 'At a relatively inexpensive price, the Asus Xonar DSX PCIe 7.1 sound card is perfect for both movies and games.',
    category_slug: "sound_cards",
    rating: 2,
    price: 119
  },
  {
    name: 'Creative Sound Blaster Z',
    description: 'For gamers, look no further than the Creative Sound Blaster Z and its slew of gamer-friendly audio features that will enhance anything from Minecraft to today’s most popular action shooter.',
    category_slug: "sound_cards",
    rating: 1,
    price: 169
  },
  {
    name: 'Linux Ubuntu',
    description: 'Ubuntu is an open source software operating system that runs from the desktop, to the cloud, to all your internet connected things.',
    category_slug: "operating_systems",
    rating: 3,
    price: 0
  },
  {
    name: 'Windows 10 Home',
    description: 'Get faster start-ups; a familiar yet expanded Start menu; and great new ways to get stuff done even across multiple devices.',
    category_slug: "operating_systems",
    rating: 2,
    price: 199
  },
  {
    name: 'Windows 10 Pro',
    description: 'All the features of Windows 10 Home plus business functionality for encryption; remote log-in; creating virtual machines; and more.',
    category_slug: "operating_systems",
    rating: 1,
    price: 339
  }
]

components_attributes.each do |component|
  new_component = Component.create!(component.merge(
    category: Category.find_by(slug: component.delete(:category_slug))
  ))

  if new_component.rating == 1
    new_component.game_categories << GameCategory.find_by(name: 'FPS')
  elsif new_component.rating == 2
    new_component.game_categories << GameCategory.find_by(name: 'MOBA')
  else
    new_component.game_categories << GameCategory.find_by(name: 'Action')
  end

end

puts 'Done'
puts 'Finished!'
