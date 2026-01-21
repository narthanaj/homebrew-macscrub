# homebrew-macscrub

Homebrew tap for [MacScrub](https://github.com/narthanaj/macscrub) - a modular CLI tool for safely cleaning up macOS system files.

## Installation

```bash
brew tap narthanaj/macscrub
brew install macscrub
```

## Usage

```bash
# Analyze disk space usage
sudo macscrub --analyze

# Deep analysis (includes re-downloadable items)
sudo macscrub --analyze --deep

# Dry run (simulate cleanup)
sudo macscrub --clean --dry-run

# Execute cleanup
sudo macscrub --clean
```

## More Information

See the [MacScrub repository](https://github.com/narthanaj/macscrub) for full documentation.
