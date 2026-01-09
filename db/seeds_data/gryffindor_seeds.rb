gryffindor = House.find_or_create_by(name: "Gryffindor")

harry_potter = Character.find_or_create_by_with_wand(
  name: 'Harry Potter',
  alternate_names: 'Boy who lived, Chosen One',
  species: 'human',
  gender: 'male',
  dateOfBirth: '31-07-1980',
  yearOfBirth: 1980,
  blood_status: 'half-blood',
  ancestry: 'James Potter and Lily Potter',
  eyeColour: 'green',
  hairColour: 'black',
  patronus: 'stag',
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: 'Daniel Radcliffe',
  alive: true,
  image: '/images/gryffindor/harry.jpg',
  house: gryffindor,
  wand_attributes: {
    wood: 'holly',
    core: 'phoenix feather',
    length: 11.0
  }
)

hermione = Character.find_or_create_by_with_wand(
  name: 'Hermione Granger',
  alternate_names: 'Mione',
  species: 'human',
  gender: 'female',
  dateOfBirth: '19-09-1979',
  yearOfBirth: 1979,
  blood_status: 'muggle-born',
  ancestry: 'muggle-born',
  eyeColour: 'brown',
  hairColour: 'brown',
  patronus: 'otter',
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: 'Emma Watson',
  alive: true,
  image: '/images/gryffindor/hermione.jpg',
  house: gryffindor,
  wand_attributes: {
    wood: 'vine',
    core: 'dragon heartstring',
    length: 15.0
  }
)

ron = Character.find_or_create_by_with_wand(
  name: 'Ron Weasley',
  alternate_names: '',
  species: 'human',
  gender: 'male',
  dateOfBirth: '1-03-1980',
  yearOfBirth: 1980,
  blood_status: 'pure-blood',
  ancestry: 'Cedrella Black',
  eyeColour: 'blue',
  hairColour: 'red',
  patronus: 'Jack Russell terrier',
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: 'Rupert Grint',
  alive: true,
  image: '/images/gryffindor/ron.jpg',
  house: gryffindor,
  wand_attributes: {
    wood: 'willow',
    core: 'unicorn tail-hair',
    length: 14.0
  }
)

ginny = Character.find_or_create_by_with_wand(
  name: 'Ginny Weasley',
  alternate_names: '',
  species: 'human',
  gender: 'female',
  dateOfBirth: '11-08-1981',
  yearOfBirth: 1981,
  blood_status: 'pure-blood',
  ancestry: 'Cedrella Black',
  eyeColour: 'brown',
  hairColour: 'red',
  patronus: 'horse',
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: 'Bonnie Wright',
  alive: true,
  image: '/images/gryffindor/ginny.jpg',
  house: gryffindor,
  wand_attributes: {
      wood: 'yew',
      core: '',
      length: ''
  }
)

neville = Character.find_or_create_by_with_wand(
  name: 'Neville Longbottom',
  alternate_names: '',
  species: 'human', gender: 'male',
  dateOfBirth: '30-07-1980',
  yearOfBirth: 1980,
  blood_status: 'pure-blood',
  ancestry: 'Callidora Black',
  eyeColour: 'green',
  hairColour: 'blond',
  patronus: 'non-corporeal Patronus',
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: 'Matthew Lewis',
  alive: true,
  image: '/images/gryffindor/neville.jpg',
  house: gryffindor,
  wand_attributes: {
      wood: 'cherry',
      core: 'unicorn tail-hair',
      length: 13.0
  }
)

sirius_black = Character.find_or_create_by_with_wand(
  name: 'Sirius Black',
  alternate_names: 'Padfoot',
  species: 'human',
  gender: 'male',
  dateOfBirth: '03-11-1959',
  yearOfBirth: 1959,
  blood_status: 'pure-blood',
  ancestry: 'Walburga Black',
  eyeColour: 'grey',
  hairColour: 'black',
  patronus: 'hare',
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: 'Gary Oldman',
  alive: false,
  image: '/images/gryffindor/sirius.jpg',
  house: gryffindor,
  wand_attributes:{
      wood: 'resin',
      core: '',
      length: 15.0
  }
)

dumbledore = Character.find_or_create_by_with_wand(
  name: 'Albus Dumbledore',
  alternate_names: '',
  species: 'human',
  gender: 'male',
  dateOfBirth: '01-08-1881',
  yearOfBirth: 1881,
  blood_status: 'half-blood',
  ancestry: '',
  eyeColour: 'blue',
  hairColour: 'silver',
  patronus: 'phoenix',
  hogwartsStudent: false,
  hogwartsStaff: true,
  actor: 'Michael Gambon',
  alive: false,
  image: '/images/gryffindor/dumbledore.jpg',
  house: gryffindor,
  wand_attributes: {
      wood: 'elder',
      core: 'thestral tail hair',
      length: ''
  }
)

hagrid = Character.find_or_create_by_with_wand(
  name: 'Rubeus Hagrid',
  alternate_names: '',
  species: 'half-giant',
  gender: 'male',
  dateOfBirth: '06-12-1928',
  yearOfBirth: 1928,
  blood_status: 'half-blood',
  ancestry: 'Giantess Fridwulfa',
  eyeColour: 'black',
  hairColour: 'black',
  patronus: 'None',
  hogwartsStudent: false,
  hogwartsStaff: true,
  actor: 'Robbie Coltrane',
  alive: true,
  image: '/images/gryffindor/hagrid.jpg',
  house: gryffindor,
  wand_attributes: {
      wood: 'oak',
      core: '',
      length: 16.0
  }
)

mcgonagall = Character.find_or_create_by_with_wand(
  name: 'Minerva McGonagall',
  alternate_names: '',
  species: 'human',
  gender: 'female',
  dateOfBirth: '04-10-1925',
  yearOfBirth: 1925,
  blood_status: 'half-blood',
  ancestry: 'Ross family',
  eyeColour: 'blue',
  hairColour: 'black',
  patronus: 'cat',
  hogwartsStudent: false,
  hogwartsStaff: true,
  actor: 'Maggie Smith',
  alive: true,
  image: '/images/gryffindor/mcgonagall.jpg',
  house: gryffindor,
  wand_attributes: {
      wood: 'fir',
      core: 'dragon heartstring',
      length: 9.5
  }
)

lupin = Character.find_or_create_by_with_wand(
  name: 'Remus Lupin',
  alternate_names: 'Moony',
  species: 'werewolf',
  gender: 'male',
  dateOfBirth: '10-03-1960',
  yearOfBirth: 1960,
  blood_status: 'half-blood',
  ancestry: 'Howell and Tonks',
  eyeColour: 'green',
  hairColour: 'brown',
  patronus: 'wolf',
  hogwartsStudent: false,
  hogwartsStaff: true,
  actor: 'David Thewlis',
  alive: true,
  image: '/images/gryffindor/lupin.jpg',
  house: gryffindor,
  wand_attributes: {
      wood: 'cypress',
      core: 'unicorn tail-hair',
      length: 10.25
  }
)

puts harry_potter.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts hermione.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts ron.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts ginny.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts neville.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts sirius_black.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts dumbledore.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts hagrid.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts mcgonagall.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts lupin.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
