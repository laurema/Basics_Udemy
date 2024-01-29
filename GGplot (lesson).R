# Cours GGplot Udemy 

library(ggplot2)

#CREER UN PLOT: 
#Plot=data+ aesthetics+ geometry
#Differents types de plot (c.f. cheat sheet)
g <-ggplot(iris,aes(x=Petal.Length, y=Petal.width))
g<-g+ geom_point()

#RENDRE LE PLOT JOLI

#couleur selon l'espèce (dans la partie aesthetics)
g<-ggplot(iris,aes(x=Petal.Length, y=Petal.width, color=Species))+ geom_point()

#Couleurs et formes des points differentes selon l'espece 
g<-ggplot(iris,aes(x=Petal.Length, y=Petal.width, color=Species,shape=Species))+ geom_point()

#Modifier la taille des points: peut etre en aesthetics mais aussi dans la fonction geom_point
g<-ggplot(iris,aes(x=Petal.Length, y=Petal.width, color=Species,shape=Species))+ geom_point(size=3)

# Gradient de couleur pour une variable continue: comment le faire?
# plus petites en bleues, plus grandes en rouge for e.g. 
g<-ggplot(iris,aes(x=Petal.Length, y=Petal.width, color=Petal.Length,shape=Species))+ geom_point(size=3)
g=g+scale_color_gradient(low="blue",high="red")

#MODIFIER LES LEGENDES
#Introduction des themes pour modifier axes, legende etc 
#Themes apparaissent
#faut retaper les lignes d'au dessus quand tu modifies 

#Modifier le fond de notre graphique

g<-g+theme_minimal()
g<-g+theme_dark()

#Modifier position de la legende
g<-g+theme(legend.position = "bottom")

#Cacher le titre de ma legende

g<-g+theme(legend.title-element_blank)

#Modifier couleur/ texture du titre de la legend (USE theme(legend.title(element_text())))

ggplot(data=x,aes(values,Sample,fill=Reads))+geom_bar(stat="identity",position="dodge")+theme_minimal()+theme(legend.position = "bottom")+theme(legend.title = element_text(color = "red", size=9,face="bold"))

#Modifier les labels de la legende e.g. couleur, texture, taille (USE theme(legend.text(element_text())))

g+theme(legend.text = (element_text(colour = "red",size=8, face=bold.italic)))

                                                                                                                                        
#Ajouter cadre a la legende NB: size refers to size line 

g<-g+theme(legend.background = element_rect(fill="pink",size=2,linety="dotted"))

#FINALISER SON GRAPHIQUE 



