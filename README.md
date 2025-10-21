# Unknwon Homebrew Tap

How to install formulas:

```zsh
brew install unknwon/homebrew-tap/<formula>
# or
brew tap unknwon/homebrew-tap
brew install <formula>
```

Formulas:
- `gmail-blade`: https://github.com/unknwon/gmail-blade

Example use with `sleepwatcher`:

`~/.sleep/sleep.sh`:

```bash
#!/bin/bash
brew services stop gmail-blade
```

`~/.sleep/sleep.sh`:

```bash
#!/bin/bash
brew services start gmail-blade
```
