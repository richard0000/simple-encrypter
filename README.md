# Simple Encrypter

## Description
A simple API to encrypt UTF8 strings to ROT-13. It accepts strings up to 1000 chars.

## Usage
Send a POST request to the `/api/encrypt` endpoint with a payload matching the following structure:
```
{
    "message": {
        "content": "your content here..."
    }
}
```

## Installation
- Clone this repository locally
- Run `bundle install`
- Run `rails db:migrate`
- Run `rails s`
