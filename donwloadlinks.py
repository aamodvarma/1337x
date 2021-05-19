import os

for a in range (22):
    if a<10:
        x='0'+str(a)
    else:
        x = str(a)
    os.system('wget https://en.wikipedia.org/wiki/List_of_American_films_of_20'+x)
    os.system('wget https://en.wikipedia.org/wiki/List_of_British_films_of_20'+x)

os.system('cat ./* >> allfilms')
os.system('sudo rm -rf ./List*')
