# GitDork.sh

## Install
```bash
git clone git@github.com:pentestpuppy/gitdork.git
chmod +x gitdork.sh
```
## Basic Use
```bash
./gitdork.sh <domain name>
```

You can also let the script prompt you for a domain:
```bash
./gitdork.sh

            :-- GITHUB DORK LINKS --:

:-- Enter domain to dork:
target.com
```

### Change your dorks:
If your input includes a tld, you'll be prompted for whether you want to dork GitHub for `target.tld` or just `target`:
```bash
:-- Do you want to dork the entire domain name? Ex: ('target.com'): y/n
n

Just the domain :-- https://github.com/search?q=/\btarget/&type=code
.bash_history :-- https://github.com/search?q=/\btarget/+.bash_history&type=code
.exs :-- https://github.com/search?q=/\btarget/+.exs&type=code
... SNIP ...
```

VS
```bash
:-- Do you want to dork the entire domain name? Ex: ('target.com'): y/n
y

Just the domain :-- https://github.com/search?q=/\btarget\.com/&type=code
.bash_history :-- https://github.com/search?q=/\btarget\.com/+.bash_history&type=code
.exs :-- https://github.com/search?q=/\btarget\.com/+.exs&type=code
.sls :-- https://github.com/search?q=/\btarget\.com/+.sls&type=code
... SNIP ...
```

