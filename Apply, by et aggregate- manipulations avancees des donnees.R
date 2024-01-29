#Manipulation avancee des donnees 

#Gros gros jeu de donnees, plusieurs miliers de lignes et trentaines de collones

# FONCTION NUMERO 1: APPLY

#apply(x,MARGIN,FUN)

# X: dataframe/ matrices 
#MARGIN: on veut traiter par colonne (2)/ lignes (1)/ lignes et colonne c(1,2)
#FUN: fonction que l'on veut appliquer au tableau (mean, sum, summary)

#prenons par exemple le dataset que l'on retrouve dans R, iris
# on veut calculer la moyenne

apply(iris,2,mean)

#cette ligne ne marche pas parce que il y a une colonne qui contient des caracteres
#solution: supprimer la 5eme colonne!!!

# FANTASTIC TRICK TO SUPPRESS DATA WHEN NECESSARY

apply(iris[,-5],2,mean)

#can also apply other types of functions e.g. summary

apply(iris[,-5],2,summary)

# NB: apply fonctionne par vecteurs puisque l'input est soit une ligne soit une colonne
#on peut creer aussi sa propre fonction 

#e.g. compter combien de variables pour chaque colonne est superieur a 5

nombre_valeurs_superieures_5<-function(vecteur)(
  length(vecteur[vecteur>5]))

apply(iris[,-5],2,nombre_valeurs_superieures_5)

#aussi possible d'apply cette fonction a chaque individu: on aura 150 valeurs (dans la premiere ligne, dans la deuxieme ligne etc...)

# FONCTION NUMERO 2: BY 

#optimal parce que permet statistique par groupe alors que apply permet de faire stats sur tous le tableau
#e.g. selon l'espece (par groupe: setosa, virginica etc)

#by(x,INDICES, FUN)
#x: dataframe
#Indices: le group/ colonnes par lequel on veut faire sous ensemble de donnees iris$species
#FUN: function

by(iris,iris$Species,summary)

#structure de donnes qui apparait: listes (on en a pas parle parce que c'est pas tres courant)
#on pourrait ensuite faire une matrice de correlation (par default de Pearson)

by(iris[,-5],iris$Species,cor )

#les variables sont elles liees dans leurs manieres de changer? plus elles sont proches de 1, plus elles sont liees 

#et si je veux calculer la moyenne?

by(iris[,-5],iris$Species,mean)

#sauf que la il y a une erreur.....

#c'est parce que la fonction by marche en faisant des sous-ensemble de nos tableaux: sous ensemble setosa/ veronica etc
# mais ca reste des dataframes, pas des vecteurs
#alors que la fonction mean elle attend un vecteur 

#solution? 

# FONCTION NUMERO 3: aggregate 

#aggregate
#aggregate(x,BY, FUN)
# x: data frame 
# BY: colonne/ ensemble de valeurs permettant de faire sous ensemble e.g iris$species
# FUN: fonction

aggregate(iris[,-5],iris$Species,mean)

#ne marchera pas car si l'on regarde la classe de iris$Species ce sera un facteur, alors que aggregate attends pour BY soit une liste soit un dataframe

#solution:

aggregate(iris[,-5],as.data.frame(iris$Species),mean)

#ici on ne peut pas directement apply la fonction "cor" (correlation) pour la simple et bonne raison que aggregate traite colonne par colonne alors que fction cor attends une matrice

# aggregate traite dataframe colonne par colonne apres avoir fait un subset selon par e.g. species







 