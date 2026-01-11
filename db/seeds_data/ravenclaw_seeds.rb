ravenclaw = House.find_or_create_by(name: "Ravenclaw")

luna = Character.find_or_create_by_with_wand(
    name: 'Luna Lovegood',
    alternate_names: 'Moon, Loony',
    species: 'human',
    gender: 'female',
    dateOfBirth: '13-02-1981',
    yearOfBirth: 1981,
    blood_status: 'pure-blood',
    ancestry: 'Porpentina Scamander',
    eyeColour: 'blue',
    hairColour: 'blond',
    patronus: 'hare',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Evanna Lynch',
    alive: true,
    image: 'luna.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: 'acacia',
        core: 'unicorn hair',
        length: ''
    }
)

cho = Character.find_or_create_by_with_wand(
    name: 'Cho Chang',
    alternate_names: '',
    species: 'human',
    gender: 'female',
    dateOfBirth: '07-04-1979',
    yearOfBirth: 1979,
    blood_status: 'Pure-Blood',
    ancestry: 'Chinese descent',
    eyeColour: 'brown',
    hairColour: 'black',
    patronus: 'swan',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Katie Leung',
    alive: true,
    image: 'cho.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

padma = Character.find_or_create_by_with_wand(
    name: 'Padma Patil',
    alternate_names: '',
    species: 'human',
    gender: 'female',
    dateOfBirth: '02-05-1980',
    yearOfBirth: 1980,
    blood_status: 'pure-blood',
    ancestry: 'Indian heritage',
    eyeColour: 'dark brown',
    hairColour: 'black',
    patronus: 'non-corporeal',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Afshan Azad',
    alive: true,
    image: 'padma.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

myrtle = Character.find_or_create_by_with_wand(
    name: 'Myrtle Elizabeth Warren',
    alternate_names: 'Moaning Myrtle',
    species: 'ghost-formerly human',
    gender: 'female',
    dateOfBirth: '',
    yearOfBirth: 1929,
    blood_status: 'muggle-born',
    ancestry: 'Warren',
    eyeColour: 'brown',
    hairColour: 'black',
    patronus: '',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Shirley Henderson',
    alive: false,
    image: 'myrtle.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

quirrell = Character.find_or_create_by_with_wand(
    name: 'Quirinus Quirrell',
    alternate_names: '',
    species: 'human',
    gender: 'male',
    dateOfBirth: '26-09-1967',
    yearOfBirth: 1967,
    blood_status: 'half-blood',
    ancestry: '',
    eyeColour: 'black',
    hairColour: 'bald',
    patronus: 'non-corporeal',
    hogwartsStudent: false,
    hogwartsStaff: true,
    actor: 'Ian Hart',
    alive: false,
    image: 'quirrell.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: 'alder',
        core: 'unicorn hair',
        length: 9.0
    }
)

lockhart = Character.find_or_create_by_with_wand(
    name: 'Gilderoy Lockhart',
    alternate_names: '',
    species: 'human',
    gender: 'male',
    dateOfBirth: '26-01-1964',
    yearOfBirth: 1964,
    blood_status: 'half-blood',
    ancestry: 'Hamish Lockhart',
    eyeColour: 'blue',
    hairColour: 'golden',
    patronus: 'non-corporeal',
    hogwartsStudent: false,
    hogwartsStaff: true,
    actor: 'Kenneth Branagh',
    alive: true,
    image: 'lockhart.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: 'cherry',
        core: 'dragon heartstring',
        length: 9.0
    }
)

xenophilius = Character.find_or_create_by_with_wand(
    name: 'Xenophilius Lovegood',
    alternate_names: '',
    species: 'human',
    gender: 'male',
    dateOfBirth: '13-11-1960',
    yearOfBirth: 1960,
    blood_status: 'pure-blood',
    ancestry: 'Scamander',
    eyeColour: 'green',
    hairColour: 'white',
    patronus: 'non-corporeal',
    hogwartsStudent: false,
    hogwartsStaff: false,
    actor: 'Rhys Ifans',
    alive: true,
    image: 'xenophilius.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

grey_lady = Character.find_or_create_by_with_wand(
    name: 'Helena Ravenclaw',
    alternate_names: 'The Grey Lady',
    species: 'ghost',
    gender: 'female',
    dateOfBirth: 'late 10th century',
    yearOfBirth: 982,
    blood_status: '',
    ancestry: 'Rowena Ravenclaw',
    eyeColour: 'grey',
    hairColour: 'black',
    patronus: '',
    hogwartsStudent: false,
    hogwartsStaff: false,
    actor: 'Nina Young',
    alive: false,
    image: 'grey_lady.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

flitwick = Character.find_or_create_by_with_wand(
    name: 'Filius Flitwick',
    alternate_names: 'Professor Flitwick',
    species: 'human',
    gender: 'male',
    dateOfBirth: '17-10-1900',
    yearOfBirth: 1900,
    blood_status: 'part-goblin',
    ancestry: 'goblin ancestry',
    eyeColour: 'blue',
    hairColour: 'brown',
    patronus: 'non-corporeal',
    hogwartsStudent: false,
    hogwartsStaff: true,
    actor: 'Warwick Davis',
    alive: true,
    image: 'flitwick.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: 'ash',
        core: 'unicorn hair',
        length: 12.25
    }
)

trelawney = Character.find_or_create_by_with_wand(
    name: 'Sybill Patricia Trelawney',
    alternate_names: 'Professor Trelawney',
    species: 'human',
    gender: 'female',
    dateOfBirth: '09-03-1960',
    yearOfBirth: 1960,
    blood_status: 'half-blood',
    ancestry: 'Cassandra Trelawney',
    eyeColour: 'dark green',
    hairColour: 'blonde',
    patronus: 'non-corporeal',
    hogwartsStudent: false,
    hogwartsStaff: true,
    actor: 'Emma Thompson',
    alive: true,
    image: 'trelawney.jpg',
    house: ravenclaw,
    wand_attributes: {
        wood: 'hazel',
        core: 'unicorn hair',
        length: 9.5
    }
)

puts luna.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts cho.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts padma.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts myrtle.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts quirrell.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts lockhart.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts xenophilius.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts grey_lady.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts flitwick.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts trelawney.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
