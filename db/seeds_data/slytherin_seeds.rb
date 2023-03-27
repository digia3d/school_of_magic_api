if !ActiveRecord::Base.connection.table_exists?(:characters)
slytherin = House.find_or_create_by(name: 'Slytherin')

draco_malfoy = Character.find_or_create_by_with_wand(
  name: 'Draco Malfoy',
  alternate_names: 'Draco',
  species: 'human',
  gender: 'male',
  dateOfBirth: '05-06-1980',
  yearOfBirth: 1980,
  blood_status: 'pure-blood',
  ancestry: 'Lucius Malfoy',
  eyeColour: 'grey',
  hairColour: 'blond',
  patronus: 'dragon',
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: 'Tom Felton',
  alive: true,
  image: 'http://hp-api.herokuapp.com/images/draco.jpg',
  house: slytherin,
  wand_attributes: {
    wood: 'hawthorn', 
    core: 'unicorn tail-hair', 
    length: 10.0
  }
)

crabbe = Character.find_or_create_by_with_wand(
  name: 'Vincent Crabbe',
  alternate_names: 'Crabbe', 
  species: 'human', 
  gender: 'male', 
  dateOfBirth: '31-08-1980',
  yearOfBirth: 1980,
  blood_status: 'pure-blood', 
  ancestry: '', 
  eyeColour: 'black', 
  hairColour: 'black', 
  patronus: '', 
  hogwartsStudent: true, 
  hogwartsStaff: false, 
  actor: 'Jamie Waylett', 
  alive: false, 
  image: 'http://hp-api.herokuapp.com/images/crabbe.jpg',
  house: slytherin,
  wand_attributes: {
      wood: '', 
      core: '', 
      length: ''
  }
)

goyle = Character.find_or_create_by_with_wand(
  name: 'Gregory Goyle',
  alternate_names: '',
  species: '', 
  gender: 'male', 
  dateOfBirth: '11-02-1979',
  yearOfBirth: 1979,
  blood_status: 'pure-blood', 
  ancestry: '', 
  eyeColour: 'brown', 
  hairColour: 'brown', 
  patronus: '', 
  hogwartsStudent: true, 
  hogwartsStaff: false, 
  actor: 'Josh Herdman', 
  alive: true, 
  image: 'http://hp-api.herokuapp.com/images/goyle.jpg',
  house: slytherin,
  wand_attributes: {
      wood: '', 
      core: '', 
      length: ''
  }
)

snape = Character.find_or_create_by_with_wand(
  name: 'Severus Snape',
  alternate_names: 'The Half-Blood Prince The Potions Master', 
  species: 'human', 
  gender: 'male', 
  dateOfBirth: '09-01-1960',
  yearOfBirth: 1960,
  blood_status: 'half-blood', 
  ancestry: 'Prince and Snape', 
  eyeColour: 'black', 
  hairColour: 'black', 
  patronus: 'doe', 
  hogwartsStudent: false, 
  hogwartsStaff: true, 
  actor: 'Alan Rickman', 
  alive: false, 
  image: 'http://hp-api.herokuapp.com/images/snape.jpg', 
  house: slytherin,
  wand_attributes: {
      wood: 'ebony', 
      core: 'phoenix tailfeather, heartstrings of a ridgeback and kelpie', 
      length: 35.0
  }
)

horace = Character.find_or_create_by_with_wand(
  name: 'Horace Slughorn',
  alternate_names: 'Old Sluggy', 
  species: 'human', 
  gender: 'male',
  dateOfBirth: '28-04-1891',
  yearOfBirth: 1891,
  blood_status: 'pure-blood', 
  ancestry: '', 
  eyeColour: 'green', 
  hairColour: 'blonde', 
  patronus: 'fish', 
  hogwartsStudent: false, 
  hogwartsStaff: true, 
  actor: 'Jim Broadbent', 
  alive: true, 
  image: 'http://hp-api.herokuapp.com/images/slughorn.JPG', 
  house: slytherin,
  wand_attributes: {
      wood: 'cedar', 
      core: 'dragon heartstring', 
      length: 10.25
  }
)

lucius = Character.find_or_create_by_with_wand(
  name: 'Lucius Malfoy',
  alternate_names: '', 
  species: 'human', 
  gender: 'male', 
  dateOfBirth: '',
  yearOfBirth: '1954', 
  blood_status: 'pure-blood', 
  ancestry: 'Greengrasses and Rosiers', 
  eyeColour: 'grey', 
  hairColour: 'blonde', 
  patronus: 'peacock', 
  hogwartsStudent: false, 
  hogwartsStaff: false, 
  actor: 'Jason Isaacs', 
  alive: true, image: 'http://hp-api.herokuapp.com/images/lucius.jpg', 
  house: slytherin,
  wand_attributes: {
      wood: 'elm', 
      core: 'dragon heartstring', 
      length: 18.0
  }
)

narcissa_malfoy = Character.find_or_create_by_with_wand(
  name: 'Narcissa Malfoy',
  alternate_names: '', 
  species: 'human', 
  gender: 'female', 
  dateOfBirth: '1955', 
  blood_status: 'pure-blood', 
  ancestry: 'Pollux Black', 
  eyeColour: 'blue', 
  hairColour: 'jet black', 
  patronus: '', 
  hogwartsStudent: false, 
  hogwartsStaff: false, 
  actor: 'Helen McCrory', 
  alive: false, 
  image: 'https://i.pinimg.com/564x/76/95/17/769517915022d4acf9d409fa36b7830c.jpg', 
  house: slytherin,
  wand_attributes: {
      wood: 'elm', 
      core: 'dragon heartstring', 
      length: 18.0
  }
)

bellatrix = Character.find_or_create_by_with_wand(
  name: 'Bellatrix Lestrange',
  alternate_names: 'Bella', 
  species: 'human', 
  gender: 'female', 
  dateOfBirth: '1951', 
  blood_status: 'pure-blood', 
  ancestry: 'Pollux Black', 
  eyeColour: 'brown', 
  hairColour: 'black', 
  patronus: '', 
  hogwartsStudent: false, 
  hogwartsStaff: false, 
  actor: 'Helena Bonham Carter', 
  alive: false, 
  image: 'https://i.pinimg.com/564x/35/c6/ba/35c6ba1aebab04432b49fbdd0f14a954.jpg',
  house: slytherin,
  wand_attributes: {
      wood: 'walnut', 
      core: 'dragon heartstring', 
      length: 12.75
  }
)

umbridge = Character.find_or_create_by_with_wand(
  name: 'Dolores Umbridge',
  alternate_names: '', 
  species: 'human', 
  gender: 'female', 
  dateOfBirth: '1961-26-08', 
  blood_status: 'half-blood', 
  ancestry: 'Cracknell-Selwyn', 
  eyeColour: 'brown', 
  hairColour: 'grey', 
  patronus: 'persian cat', 
  hogwartsStudent: false, 
  hogwartsStaff: true, 
  actor: 'Imelda Staunton', 
  alive: true, 
  image: 'https://media.harrypotterfanzone.com/dolores-umbridge-order-of-the-phoenix-portrait-4-1050x0-c-default.jpg',
  house: slytherin,
  wand_attributes: {
      wood: 'birch', 
      core: 'dragon heartstring', 
      length: 8.0
  }
)

voldemort = Character.find_or_create_by_with_wand(
  name: 'Lord Voldemort',
  alternate_names: 'He Who Must Not Be Named, The Dark Lord', 
  species: 'human', 
  gender: 'male', 
  dateOfBirth: '31-12-1926',
  yearOfBirth: 1926, 
  blood_status: 'half-blood', 
  ancestry: 'Riddle-Gaunt', 
  eyeColour: 'red', 
  hairColour: 'bald', 
  patronus: '', 
  hogwartsStudent: false, 
  hogwartsStaff: false, 
  actor: 'Ralph Fiennes', 
  alive: false, 
  image: 'https://static.wikia.nocookie.net/harrypotter/images/a/aa/Voldemort_Headshot_DHP1.png/revision/latest/scale-to-width-down/1000?cb=20161203031453',
  house: slytherin,
  wand_attributes: {
      wood: 'yew', 
      core: 'phoenix feather', 
      length: 13.5
  }
) 

puts draco_malfoy.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts crabbe.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts goyle.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts snape.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts horace.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts lucius.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts narcissa_malfoy.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts bellatrix.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts umbridge.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts voldemort.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })