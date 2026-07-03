# homebrew-tap

Custom Homebrew tap for personal formulae.

## Usage

Tap this repository:

```bash
brew tap <your-github-username>/tap
```

Install a formula from this tap:

```bash
brew install <your-github-username>/tap/<formula-name>
```

## Structure

Homebrew formula files should be added to:

- `Formula/`

Example:

- `Formula/mytool.rb`

## Creating a New Formula

```bash
brew create https://example.com/mytool-1.0.0.tar.gz
```

Then move the generated formula into this repository's `Formula/` directory and commit the changes.

## Notes

- Keep formula names lowercase.
- Use stable release URLs and checksums.
- Test locally with:

```bash
brew install --build-from-source ./Formula/<formula-name>.rb
```
