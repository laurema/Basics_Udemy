#Fonctions de base

#Fonctions: ensemble de codes au sein d'un fichier qui va permettre de faire qqc

#Nom de la fonction dit ce qu'elle fait 

mean() #lui donner objects qui permettent de fonctionner

mean(vecteur2)

#fonction peut avoir bcp d'arguments- si on ne sait pas ce qu'elle fait"

?mean

#nous donne ce que l'on pourrait ajouter/ enlever e.g. na.rm

#nous prevent de devoir tout coder nous memes !

#FONCTIONS CLASSIQUES DANS R

#taille d'un vecteur

length(vecteur2)

#Afficher nom des valeurs

names(vecteur2)

#Donner nom des valeurs- fonction paste a concatene "ma valeur" a chaque valeur du vecteur 

names(vecteur2)=paste("Ma valeur",vecteur2,sep=" ")

#Sort

sort(vecteur2)

#e.g. trier dans l'ordre decroissant

sort(vecteur2, decreasing=TRUE)

#Rank: affiche position de la valeur dans le vecteur

rank(vecteur2)

#Faire la somme de toutes les valeurs du vecteur

sum(vecteur2)
mean(vecteur2)
min(vecteur2) #plus petite valeur du vecteur
max(vecteur2) #plus grande valeur du vecteur
summary (vecteur2) #min, 1er quantile, mediane, moyenne, max
median(vecteur2) #mediane vecteur




