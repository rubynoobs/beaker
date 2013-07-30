# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Beaker::Application.config.secret_key_base = '2cace8254ecb85d59f6f139d1a73cf55916d89c84bbef099d34ca28bcfed349902a11e1eab88ae9b8c6b43ac715330c4cbbbf4c36f4bf8b26474ecb4a2738b4b'
