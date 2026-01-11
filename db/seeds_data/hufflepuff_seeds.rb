hufflepuff = House.find_or_create_by(name: 'Hufflepuff')

diggory = Character.find_or_create_by_with_wand(
    name: 'Cedric Diggory',
    alternate_names: 'Pretty Boy Diggory, Ced',
    species: 'human',
    gender: 'male',
    dateOfBirth: '07-09-1978',
    yearOfBirth: 1978,
    blood_status: 'pure-blood',
    ancestry: 'Nathan Diggory',
    eyeColour: 'grey',
    hairColour: 'brown',
    patronus: 'badger',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Robert Pattinson',
    alive: false,
    image: 'diggory.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: 'ash',
        core: 'unicorn hair',
        length: 12.25
    }
)

abbott = Character.find_or_create_by_with_wand(
    name: 'Hannah Abbott',
    alternate_names: 'Hannah',
    species: 'human',
    gender: 'female',
    dateOfBirth: '',
    yearOfBirth: 1980,
    blood_status: 'half-blood',
    ancestry: 'Giffard Abbott ',
    eyeColour: 'green',
    hairColour: 'blonde',
    patronus: 'Non-corporeal',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Charlotte Skeoch',
    alive: true,
    image: 'abbott.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: 'almond tree',
        core: 'unicorn tail hair',
        length: 9.5
    }
)

bones = Character.find_or_create_by_with_wand(
    name: 'Susan Bones',
    alternate_names: '',
    species: 'human',
    gender: 'female',
    dateOfBirth: '04-01-1980',
    yearOfBirth: 1980,
    blood_status: 'half-blood',
    ancestry: 'Mr Bones',
    eyeColour: 'brown ',
    hairColour: 'red',
    patronus: 'corporeal',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Eleanor Columbus',
    alive: true,
    image: 'bones.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: 'oak',
        core: 'unicorn tail',
        length: 7.5
    }
)

e_r_l = Character.find_or_create_by_with_wand(
    name: 'Zacharias Smith',
    alternate_names: '',
    species: 'human',
    gender: 'male',
    dateOfBirth: '16-08-1980',
    yearOfBirth: 1980,
    blood_status: 'half-blood',
    ancestry: 'Smith family',
    eyeColour: 'blue',
    hairColour: 'blond',
    patronus: 'Non-corporeal',
    hogwartsStudent: false,
    hogwartsStaff: true,
    actor: 'Nick Shirm',
    alive: true,
    image: 'e_r_l.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

finch_fletchley = Character.find_or_create_by_with_wand(
    name: 'Justin Finch-Fletchley',
    alternate_names: '',
    species: 'human',
    gender: 'male',
    dateOfBirth: '14-06-1980',
    yearOfBirth: 1980,
    blood_status: 'muggle-born',
    ancestry: '',
    eyeColour: 'brown',
    hairColour: 'brown',
    patronus: 'non-corporeal',
    hogwartsStudent: false,
    hogwartsStaff: true,
    actor: 'Edward Randell',
    alive: true,
    image: 'finch.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: 'cherry',
        core: 'unicorn hair',
        length: 10.5
    }
)

helga_hufflepuff = Character.find_or_create_by_with_wand(
    name: 'Helga Hufflepuff',
    alternate_names: '',
    species: 'race witch',
    gender: 'female',
    dateOfBirth: '',
    yearOfBirth: 1580,
    blood_status: 'pure blood',
    ancestry: '',
    eyeColour: 'blue',
    hairColour: 'red',
    patronus: 'badger',
    hogwartsStudent: false,
    hogwartsStaff: false,
    actor: 'Katie McGrath',
    alive: false,
    image: 'helga_hufflepuff.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: 'oak',
        core: 'unicorn hair',
        length: 10.25
    }
)

sprout = Character.find_or_create_by_with_wand(
    name: 'Pomona Sprout',
    alternate_names: 'Herbology Master',
    species: 'human',
    gender: 'female',
    dateOfBirth: '15-05-1931',
    yearOfBirth: 1931,
    blood_status: 'half-blood',
    ancestry: 'unknown',
    eyeColour: 'brown',
    hairColour: 'grey',
    patronus: 'incorporeal',
    hogwartsStudent: false,
    hogwartsStaff: true,
    actor: 'Miriam Margolyes',
    alive: true,
    image: 'sprout.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

nymphadora = Character.find_or_create_by_with_wand(
    name: 'Nymphadora Tonks',
    alternate_names: 'Dora',
    species: 'human(metamorphmagus)',
    gender: 'female',
    dateOfBirth: '',
    yearOfBirth: 1973,
    blood_status: 'half-blood',
    ancestry: 'Black family',
    eyeColour: 'dark brown',
    hairColour: 'brown',
    patronus: 'Jack Rabbit',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Natalia Tena',
    alive: false,
    image: 'nymphadora.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: 'almond',
        core: 'ashwinder ash',
        length: 12.0
    }
)

scamander = Character.find_or_create_by_with_wand(
    name: 'Newt Scamander',
    alternate_names: 'Newt',
    species: 'human',
    gender: 'male',
    dateOfBirth: '24-02-1897',
    yearOfBirth: 1897,
    blood_status: 'unknown',
    ancestry: 'Goldstein family',
    eyeColour: 'hazel',
    hairColour: 'brown',
    patronus: 'Kelpie',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Eddie Redmayne',
    alive: true,
    image: 'scamander.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: 'simple wood',
        core: '',
        length: ''
    }
)

theseus = Character.find_or_create_by_with_wand(
    name: 'Theseus Scamander',
    alternate_names: '',
    species: 'human',
    gender: 'male',
    dateOfBirth: '25-02-1888',
    yearOfBirth: 1888,
    blood_status: 'unknown',
    ancestry: 'Goldstein family',
    eyeColour: 'blue',
    hairColour: 'light brown',
    patronus: 'unknown',
    hogwartsStudent: true,
    hogwartsStaff: false,
    actor: 'Callum Turner',
    alive: true,
    image: 'theseus.jpg',
    house: hufflepuff,
    wand_attributes: {
        wood: '',
        core: '',
        length: ''
    }
)

puts diggory.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts abbott.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts bones.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts e_r_l.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts finch_fletchley.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts helga_hufflepuff.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts sprout.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts nymphadora.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts scamander.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
puts theseus.as_json(include: { house: { only: [:name] }, wand: { only: [:wood, :core, :length] } })
