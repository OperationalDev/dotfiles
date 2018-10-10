# dotfiles

## Description

Simple cookbook for setting up dotfiles on OSX.

# Usage

Clone cookbook into ~/Cookbooks directory and run:

```
chef-client -z -o dotfiles
```

Then add your Chef details to .secrets/chef and .secrets/proxy.





## Recipes

default - runs all recipes
bash - sets up .bash_profile, ~/.secrets and ~/.dotfiles
chef - sets up .chef

