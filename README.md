# Levee-Failure-Regression-Analysis


 Sûreté de fonctionnement

I.	Introduction à la base de données réelle
Il s’agit d’une base de taille 82 de cas de défaillance de la digue du fleuve Mississippi et les facteurs liés à cette défaillance [1].
Nous allons étudier 82 observations sur les 14 variables suivantes :
“Failure” : Y a-t-il une défaillance ? (1=oui or 0=non), “Year”: L’année
“RiverMile” :  Emplacement le long de la rivière (marqueur de mile)
“Sediments” : Présence de sediments (1=oui or 0=non)
“BorrowPit” :  Banc d'emprunt présent ? (1=oui ou 0=non)
“Meander” : Type de méandre (1=coude intérieur, 2=coude extérieure, 3=chute, 4=droit)
“ChannelWidth” : Largeur du chenal de la rivière (en mètres)
“FloodwayWidth” : Largeur du canal de dérivation (en mètres)
“ConstrictionFactor” : Constriction du canal de dérivation au fil du temps (années 1880 à nos jours)
“LandCover” : Couverture terrestre (1=eau libre, 2=herbe, 3=agricole, 4=forêt)
”VegWidth” : Largeur de la zone végétative (en mètres)
“Sinuosity” : Longueur de la rivière divisée par la longueur de la vallée sur 10 milles en amont et en aval du site de la digue
“Dredging” : Intensité de dragage
“Revetement” : Y a-t-il une structure en pierre (mur) destinée à soutenir la berge ? (1=oui ou 0=non)

II.	Objectif du TP
Le but de cette enquête était de tester l'importance relative des facteurs géologiques, géomorphologiques et autres facteurs physiques qui ont conduit à des ruptures de digues au cours du siècle dernier le long d'une grande partie du fleuve Mississippi.

III.	Travail demandé
Partie 1 :
1.	Nettoyer l’environnement de travail RStudio avec la commande rm.
2.	Définir le répertoire de travail et l’afficher.
3.	Importer, lire et afficher la base de données dans le fichier « LeveeFailures.csv » vers un objet data.
4.	Afficher les dimensions de data.
5.	Afficher la sinuosité maximale du fleuve de Mississippi.
6.	Empiler les données suivant leurs états.
Partie 2 :
1.	Afficher un récapitulatif des statistiques descriptives.
2.	Vérifier que la variable dépendante « sinuosity » suit la loi normale.
3.	Vérifier l'indépendance des variable explicatives.
4.	Quantifier les facteurs de risque avec une régression linaire simple.
5.	Quantifier les facteurs de risque avec une régression linaire multiple.
6.	Vérifier l'homoscédasticité c’est-à-dire vérifier que l'erreur de prédiction ne change pas de manière significative sur la plage de prédiction du modèle.
7.	Vérifier que la relation entre les variables dépendantes et indépendantes est linéaire.

Bibliographie

[1] 	A. P. N. &. R. J. W. Flor, "Evaluating levee failure susceptibility on the Mississippi River using logistic regression analysis.," Engineering Geology, vol. 116, no. (1-2), pp. 139-148, 2010. 


