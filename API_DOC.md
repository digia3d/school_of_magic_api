# API Documentation

## Introduction

> This API is designed to provide access to information about characters, houses, and wands in the wizarding world of Harry Potter. The API is versioned and accessed through the api/v1 namespace. All responses are in JSON format.

## Authentication

> The API provides a simple authentication mechanism for the login endpoint. To authenticate a user, send a POST request to /api/v1/login with the user's name in the request body. If the user exists, the API will respond with a JSON object containing the user's ID and a success flag. If the user does not exist, the API will respond with an error message and a 401 status code.

## Endpoints

### Characters

> GET /api/v1/characters
Returns a list of all characters in the database. Each character object includes a wand object with the wand's wood, core, and length.

- Request Parameters
  - None

- Response
  - A JSON object containing an array of character objects.

- Example Request
>GET /api/v1/characters(https://school-of-magic-api.onrender.com/api/v1/characters)

- Example Response
[
  {
    "id": 1,
    "name": "Harry Potter",
    "species": "human",
    "gender": "male",
    "dateOfBirth": "31-07-1980",
    "yearOfBirth": 1980,
    "ancestry": "James Potter and Lily Potter",
    "eyeColour": "green",
    "hairColour": "black",
    "patronus": "stag",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Daniel Radcliffe",
    "alive": true,
    "image": "https://ik.imagekit.io/hpapi/harry.jpg",
    "wand": {
      "wood": "holly",
      "core": "phoenix feather",
      "length": 11
    },
    "house": {
      "name": "Gryffindor"
    }
  },
  ...
]

- Example request
  >GET /api/v1/characters/:id

- Request Parameters
  - id - The ID of the character to retrieve.

- Response
  - A JSON object containing a character object.

- Example Request
  >GET /api/v1/characters/1

- Example response
{
  "id": 2,
  "name": "Hermione Granger",
  "species": "human",
  "gender": "female",
  "dateOfBirth": "19-09-1979",
  "yearOfBirth": 1979,
  "ancestry": "muggle-born",
  "eyeColour": "brown",
  "hairColour": "brown",
  "patronus": "otter",
  "hogwartsStudent": true,
  "hogwartsStaff": false,
  "actor": "Emma Watson",
  "alive": true,
  "image": "https://static.wikia.nocookie.net/harrypotter/images/3/34/Hermione_Granger.jpg/revision/latest/scale-to-width-down/1000?cb=20210522145306",
  "wand": {
    "wood": "vine",
    "core": "dragon heartstring",
    "length": 15
  },
  "house": {
    "name": "Gryffindor"
  }
}

- Example GET request
  >GET /api/v1/api/v1/houses/house:id/characters(GET /api/v1/api/v1/houses/1/characters)

  - Example response

  [
  {
    "id": 1,
    "name": "Harry Potter",
    "species": "human",
    "gender": "male",
    "dateOfBirth": "31-07-1980",
    "yearOfBirth": 1980,
    "ancestry": "James Potter and Lily Potter",
    "eyeColour": "green",
    "hairColour": "black",
    "patronus": "stag",
    "hogwartsStudent": true,
    "hogwartsStaff": false,
    "actor": "Daniel Radcliffe",
    "alive": true,
    "image": "https://ik.imagekit.io/hpapi/harry.jpg",
    "wand": {
      "wood": "holly",
      "core": "phoenix feather",
      "length": 11
    },
    "house": {
      "name": "Gryffindor"
    }
  },
  ...
  {
    "id": 10,
    "name": "Remus Lupin",
    "species": "werewolf",
    "gender": "male",
    "dateOfBirth": "10-03-1960",
    "yearOfBirth": 1960,
    "ancestry": "Howell and Tonks",
    "eyeColour": "green",
    "hairColour": "brown",
    "patronus": "wolf",
    "hogwartsStudent": false,
    "hogwartsStaff": true,
    "actor": "David Thewlis",
    "alive": true,
    "image": "http://hp-api.herokuapp.com/images/lupin.jpg",
    "wand": {
      "wood": "cypress",
      "core": "unicorn tail-hair",
      "length": 10.25
    },
    "house": {
      "name": "Gryffindor"
    }
  }
]

- Example POST request
  >POST /api/v1/users (http://localhost:3000/api/v1/users)
    -Headers: Header name: 'Content-Type'
              Header Value: 'application/json'
    -Body: JSON: {"name":"user_name"}

- Example response
  {
    "id": 1,
    "name": "user_name"
  }

- Example POST request

  > POST /api/v1/login (http://localhost:3000/api/v1/login)
    -Headers: Header name: 'Content-Type'
              Header Value: 'application/json'
    -Body: JSON: {"name":"user_name"}

- Example response
  {
    "id": 1,
    "name": "user_name"
  }




