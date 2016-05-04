
## wystawienie localhosta w interecie
```
rails s -b 0.0.0.0
./ngrok http 3000
```

## Po spullowaniu zmian:
```
bundle install
rake db:drop db:create db:migrate db:seed (trzeba miec szamkniety server)
restar servera
```

## Git
###### The dodaje zmiany
```git add -A```
###### zobaczyc, czy dodane
```git status```

###### nowy commit
```git commit -m "message"```

###### podnoszenie zmian
```
git add -A
git stash
```

###### położenie zmian
```
git stash pop
```

###### ściąganie danych z serwera
```
git pull --rebase
```

jak mam konflikt w rebase:
edytuje plik z konfliktem i później
```
git add -A
git rebase --continue
```

###### deploy
```
git push heroku master
```

```
heroku pg:reset DATABASE_URL
```

```
heroku run:detached rake db:migrate db:seed
```


