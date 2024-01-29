#Utiliser la fonction Dplyr 

#tres recent, developpe par Adley Wicker

#permet manipulation avancee des donnees de maniere tres straightforwards 

#fonction plus rapide sur R a l'heure actuelle 

#charger fonction

library(dplyr)

class(iris)

#dplyr peut travailler soit avec des dataframe ou sa structure de donnees qui lui est propre, le tibble

#proche du dataframe mais avec amelioration

iris_data=as_tibble(iris)
iris_data

#avantage: head is done automatically + on connait deja la dimension (plus besoin de s'embeter avec dim)+ dimension de chaque variable

#OPERATEUR 1: SELECT

#selectionner des colonnes

select(iris_data,Sepal.Length,Petal.Length,Species)

#aussi possible d'utiliser ":"

select(iris_data,Sepal.Length:Sepal.Width)

select(iris_data,Sepal.Length:Petal.Length)

select(iris_data,-Species) #pour virer la colonne "Species" qui pourrait faire bugger l'analyse statistique

#on pourrait aussi vouloir selectionner une colonne selon le nom de colonne qu'il y a dedans

select(iris_data,starts_with("Petal"))

#aussi possible de supprimer certaines colonnes grace a cette technique

select(iris_data,-starts_with("Sepal"))

#aussi possible de prendre la fin- ici "length" est un motif
select(iris_data, ends_with("length"))

#aussi possible de demander variable qui contient un mot

select(iris_data,contains("al"))

#OPERATEUR 2: FILTER

#filtrer sur les individus (i.e. les lignes)

#e.g. selectionner tous les individus qui ont des grandes petales

grandes_petales=filter(iris_data,Sepal.Length>=5,Sepal.Width>=2)
grandes_petales

#selectionner individus avec longueurs sepales entre 2 valeurs

filter(iris_data,between(Sepal.Length,4,7))
filter(iris_data,Sepal.Length>=4,Sepal.Length<=7) #equivalent long

#creer un sous-ensemble/ subset dans notre tableau

filter(iris_data,Species== "setosa")

#on peut recuperer ce qui ne sont pas setosa

filter(iris,Species!="setosa")

#!= PAS EGAl
#== EGAL

#Selectionner 2 groupes (methodes equivalentes)

filter(iris_data,Species%in% c("setosa","versicolor"))

filter(iris_data,Species=="setosa"|Species=="versicolor")

# Filtrer selon toutes les variables

#any vars: si une des variables est superieur a 5, garder l'individu
# ici obligation de retirer colonne 5 parce pas numerique donc fait bugger la ligne
filter_all(iris_data[,-5],any_vars(.>5))

#equivalent a 

filter(iris_data,(Sepal.Length>5|Sepal.Width>5|Petal.Length>5|Petal.Width>5))

#Filtrer pour que toutes les variables soient sup a 5

filter_all(iris_data[,-5],all_vars(.>5))

#OPERATEUR 3:  pipe(%>%)

#sortie de la premiere fonction va etre renvoyer a une autre fonction (i.e. enchainer les verbes de maniere lisible)

select(iris,Sepal.Length,Petal.Length,Species)

iris_data%>%
  select(Sepal.Length,Petal.Length,Species)

#regarde comment tu peux enchainer!!
iris_data%>%
  select(-Species) %>%
filter_all(all_vars(.>2))

#OPERATEUR 4:arrange

iris_data%>%
  arrange(Sepal.Length)

#Pour trier dans l'ordre decroissant 
iris_data%>%
  arrange(desc(Sepal.Length))

#Aussi possible de trier sur plusieurs variables

iris_data%>%
  arrange(Sepal.Length,Sepal.Width)

#Aussi possible d'utiliser d'autres operateurs au sein de arrange

iris_data%>%
  select(Petal.Length,Petal.Width,Species)%>%
  filter(Species=="setosa")%>%
arrange(Petal.Length,Petal.Width)



#OPERATEUR 5: SUMMARISE

#Permet de faire des statistiques- resume statistique d'1 vecteur qui retourne une valeur

#ATTENTION:un seul egal ICI

iris_data%>%
  summarise(moyenne_taille_petal=mean(Petal.Length))

#n permet de calculer taille de l'effectif 

iris%>%
  summarise(moyenne_taille_petal=mean(Petal.Length),
            minimum_taille_petale=min(Petal.Length),
            maximum_taille_petale=max(Petal.Length),
            total=n())


iris%>%
  summarise(moyenne_taille_petale=mean(Petal.Length),
            minimum_taille_petale=min(Petal.Length),
            moyenne_taille_sepale=mean(Sepal.Length),
            minimum_taille_sepale=min(Sepal.Length))


iris_data %>%
  summarise 
