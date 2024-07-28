# Infrahouse-toolkit tap.formula

## How do I install infrahouse-toolkit with homebrew?

`brew install infrahouse/infrahouse-toolkit/infrahouse-toolkit`

Or `brew tap infrahouse/infrahouse-toolkit` and then `brew install infrahouse-toolkit`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

### Update version

Update version in a tarball URL and its sha256 in `Formula/infrahouse-toolkit.rb`.
```
curl -L https://github.com/infrahouse/infrahouse-toolkit/archive/refs/tags/2.28.0.tar.gz  | sha256sum
```
Update dependencies.
```
brew update-python-resources Formula/infrahouse-toolkit.rb
```
Commit & push to master
```
git commit -am "Release 2.28.0"
git push
```
