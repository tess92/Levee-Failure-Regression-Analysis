#Question 1

# Nettoyer votre environnement de travail avec la commande rm
rm(list = ls())
##########################################################

#Question 2

# #Affiche le r�pertoire de travail par d�faut
getwd()

# D�finir le nouveau r�pertoire de travail
setwd("C:/Users/21694/Desktop/Enseignement/3- 2021-2022/TP s�ret� de fonctionnement 3�me GMAM fiabilit� group/TP3")

# Affiche le nouveau r�pertoire de travail par d�faut
getwd()



###########################################################

#Question 3

# Importer et lire la base de donn�es
data <- read.csv("LeveeFailures.csv")

#afficher la base de donn�es
View(data)

##############################################################???

#Question 4

# afficher les dimensions de la dataframe
dim(data)


################################################################

#Question 5

# sinuosit� maximale
max(data$Sinuosity)

###############################################################

#Question 6

# afficher les donn�es suivant leurs �tats
stack(table(data$Failure))


###############################################################
#################################################################""
#Partie 2

#Question 1

# afficher un r�capitulatif des statistiques descriptives
summary(data)




#############################
#Question 2

#verifier que la variable d�pendante siuosity suit la loi normale 
hist(data$Sinuosity)

###############################
#Question 3

# verifier l'ind�pendance des variable explicatives
cor(data$Failure, data$RiverMile)
cor(data$Meander, data$RiverMile)


#autrement
install.packages("corrplot")
library(corrplot)
source("http://www.sthda.com/upload/rquery_cormat.r")
rquery.cormat(data)

######################

#Question 4 et 5

# Quantifier les facteurs de risque avec une regr�ssion linaire simple et un regression lin�aire multiple
LM <- lm(data$Sinuosity ~ data$FloodwayWidth + data$ChannelWidth + data$Failure + data$BorrowPit, data = data)
summary(LM)


#Question 6

# V�rifier l'homoc�dasticit� c�d v�rifier que l'erreur de pr�diction ne change pas de mani�re significative
#sur la plage de pr�diction du mod�le

par(mfrow=c(2,2))
plot(LM)
par(mfrow=c(1,1))


#Question 7


# Verifier que la relation entre les variables d�pendantes et ind�pendantes
# est lin�aire
plot(data$Sinuosity ~ data$ChannelWidth,  data = data)
abline(LM)






install.packages("psych")

library(psych)

alpha(data,  'check.keys=TRUE')




