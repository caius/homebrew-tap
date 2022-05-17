# Caius' Homebrew Tap

Caius puts things here to be able to tap them easily. Ideally they move upstream or die, so you might not want to depend on them in production.

## Usage

Tap into your local brew with

```sh
brew tap caius/tap
```

Then you can install any of the casks or formula by referring to them by name, eg

```sh
brew install drata-agent
```

Alternatively you can do both in one, by including the tap name in the name of the cask or formula at install time:

```sh
brew install caius/tap/drata-agent
```

## Development

**Debugging Github Actions workflow**

The workflow is configured to run at 0800 every day (UTC), but you can also trigger it for debugging purposes by pushing to a branch whose name starts `actions/`.

## Previously known as `homebrew-jo`

This repo used to be named `homebrew-jo`, but the formula for `jo` was accepted upstream into Homebrew itself. This tap is no longer required for `jo`! Just `brew install jo` and you're good to go.
