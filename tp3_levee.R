#Question 1

# Nettoyer votre environnement de travail avec la commande rm
rm(list = ls())
##########################################################

#Question 2

# #Affiche le répertoire de travail par défaut
getwd()

# Définir le nouveau répertoire de travail
setwd("C:/Users/21694/Desktop/Enseignement/3- 2021-2022/TP sûreté de fonctionnement 3ème GMAM fiabilité group/TP3")

# Affiche le nouveau répertoire de travail par défaut
getwd()



###########################################################

#Question 3

# Importer et lire la base de données
data <- read.csv("LeveeFailures.csv")

#afficher la base de données
View(data)

##############################################################???

#Question 4

# afficher les dimensions de la dataframe
dim(data)


################################################################

#Question 5

# sinuosité maximale
max(data$Sinuosity)

###############################################################

#Question 6

# afficher les données suivant leurs états
stack(table(data$Failure))


###############################################################
#################################################################""
#Partie 2

#Question 1

# afficher un récapitulatif des statistiques descriptives
summary(data)




#############################
#Question 2

#verifier que la variable dépendante siuosity suit la loi normale 
hist(data$Sinuosity)

###############################
#Question 3

# verifier l'indépendance des variable explicatives
cor(data$Failure, data$RiverMile)
cor(data$Meander, data$RiverMile)


#autrement
install.packages("corrplot")
library(corrplot)
source("http://www.sthda.com/upload/rquery_cormat.r")
rquery.cormat(data)

######################

#Question 4 et 5

# Quantifier les facteurs de risque avec une regréssion linaire simple et un regression linéaire multiple
LM <- lm(data$Sinuosity ~ data$FloodwayWidth + data$ChannelWidth + data$Failure + data$BorrowPit, data = data)
summary(LM)


#Question 6

# Vérifier l'homocédasticité càd vérifier que l'erreur de prédiction ne change pas de manière significative
#sur la plage de prédiction du modèle

par(mfrow=c(2,2))
plot(LM)
par(mfrow=c(1,1))


#Question 7


# Verifier que la relation entre les variables dépendantes et indépendantes
# est linéaire
plot(data$Sinuosity ~ data$ChannelWidth,  data = data)
abline(LM)






install.packages("psych")

library(psych)

alpha(data,  'check.keys=TRUE')




