# Flutter state machine with coordinators

This repository aims to solve a problem where:

You have a flow of screen, and you need to call those screens with a different logic
depending on something, API response for example.

Example:

SignUp flow, screens
- email
- name
- address

We can have three scenarios:
1. signUp
2. re-subimit (in case that the API let the user send back some wrong information)
3. update data (like, banks after some time you need to update your data, and you use the same flow)

All of these screen can call a different API at the end.

# How it works

The IDEA of the repository was to create a POC (Prove of concept) that I develop to solve a problem that we had at EBANX.

WIP

# Setup

Run the following command to setup all the dependencies

```
$ flutter pub get 
```

## Credits

This implementation is based on @cmorigaki state machine algorithm.
