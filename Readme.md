# Caius' Homebrew Tap

Caius puts things here to be able to tap them easily. Ideally they move upstream or die, so you might not want to depend on them in production.

## Usage

Tap into your local brew with

```sh
brew tap caius/tap
```

Then you can install any of the casks or formula by referring to them by name, eg

```sh
brew install pgmetrics
```

Alternatively you can do both in one, by including the tap name in the name of the cask or formula at install time:

```sh
brew install caius/tap/pgmetrics
```

## Development

**Debugging Github Actions workflow**

The workflow is configured to run at 0800 every day (UTC), but you can also trigger it for debugging purposes by pushing to a branch whose name starts `actions/`.

## Previous Formulae

These used to live here, but no longer do.

- `jo` - now available in homebrew-core
- `drata-agent` - now available in homebrew-cask

This repo also used to be named `homebrew-jo`, but got renamed after the formula for `jo` was accepted upstream into Homebrew itself.
