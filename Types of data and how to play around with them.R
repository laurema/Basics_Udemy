# Types of data

#Class: what you can do with the data; type: how the data is organised

#Ask R what class:

class()

# 1: NUMERIC 

#Ask R what type

typeof() #either "double" (chiffres a virgule et entier) et "integer" (uniquement chiffre entier)
#integer prends moins de place que double en terme de "place informatique"/ stockage memoire

#Comment transformer double en integer par economie de place?

#typeof(3)--> double

as.integer(3)

typeof(as.integer(3)) #transformed into integer

# 2: CHARACTER --> texte sur lequel on ne peut pas effectuer d'operations
#character indique entre simple ou double guillemet (au choix)

class("hello")
type ("hello")
#both come up as character

# 3: BOOLEAN

#either TRUE or FALSE

#e.g. 56<60
TRUE 

#will be covered elsewise

# 4: NA 

#ds le cas ou valeurs manquantes dans le tableau; vraiment pratique pour supprimer NA dans tableaux etc 

# VARIABLES

#variable: nom de variable dans laquelle on peut stocker une valeur ou un ensemble de valeurs 
#pourra etre ensuite utiliser pour plein de raison

mon_caractere="a"
#vecteur du nom "mon_caractere" contient lettre "a" 

mon_boolean=3<1
c
#POUR ENVOYER DANS R: control + enter 

#Vecteurs- structure par defaut dans R

#vecteur: valeur ou ensemble de valeurs ordonnes, ranges ensemble 

c(1,2,3)
c(2,3,1)

#on ne peut pas melanger les types de valeurs

c(a,8,5) # erreur

#on peut ranger un vecteur dans une variable 

mon_vecteur<- c(1,2,3)

#class(mon_vecteur)
"numeric"

> class(c("A",8,5))
[1] "character"

#Operations sur vecteurs

vecteur1=seq(from=1,to=10)
vecteur2=rep(10,times=10)

vecteur1+1 #augmenter toutes les valeurs du vecteur 1 de 1 
vecteur1*10 #multiplier toutes les valeurs du vecteur 1 x 10
vecteur1* vecteur2 #multiplier les deux vecteurs 
vecteur1/vecteur2

#operations sur vecteurs marchent avec soit une valeur, soit on lui donne un vecteur de meme taille 

#en revanche....

vecteur2=c(2,1,3)

vecteur1/vecteur2 

#PAS POSSIBLE parce que les objects ne font pas la meme longueur! 

#Concatenation de vecteurs: i.e. creer un vecteur qui contient les valeurs des 2 vecteurs

concatenation=c(vecteur1, vecteur2)

#Comment parcourir les vecteurs grace aux indexs?

vecteur2=seq(from=6,to=15)

vecteur2[2] #crochets permettent d'acceder a position dans vecteur

vecteur2[1:3] #double points permet de demander valeurs de la premiere a derniere position que je demande 

vecteur2[c(1,6,2)]#mettre valeurs quim'interessent n'etant pas a la suite l'une de l'autre

#recuperer toutes les valeurs for e.g. >8

superieur=vecteur2>8
superieur

# FALSE AND TRUE displayed- i.e. dependant de si condition est verifiee 

vecteur2[superieur] #garde indices qui sont a true 



