
#install.packages("quarto")
library(quarto)
setwd("/home/onyxia/work/fichesPACT/fiches")
getwd()

#Chaque année, mettre à jour le modèle "fiche_modele.qmd" pour changer les millésimes dans le titres du tableau
# (pop par sexe et âge en 2021) et dans les sources et notes de bas de tableaux (géographie 2024, etc)



# Fonction pour générer un document Quarto pour un département donné
# prend en paramètres l'url de la page internet et le nom du département ou de la région
# ainsi qu'une lettre (P pour pays de la loire, C pour Centre, B pour Bretagne, PA pour PACA) pour préfixer les fiches
# et créée, dans le dossier "fiches html", une fiche dont le nom est le nom du département/région
generer_fiche <- function(nom, lien_internet, lettre) {
  params <- list(
    title = nom,
    url = lien_internet
  )
  
  quarto::quarto_render(
    input = 'fiche_modele.qmd',
    output_file = paste0(lettre,'_',nom,'.html'),
    execute_params = params,
    execute_dir = getwd()
  )
}


#On peut lancer la fonction sur tous nos départements et régions

#Pays de la Loire
generer_fiche(nom = "Région Pays de la Loire",lettre = "P",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=REG-52#chiffre-cle-1")

generer_fiche(nom = "Département de la Loire-Atlantique (44)",lettre = "P",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-44#chiffre-cle-1")
generer_fiche(nom = "Département du Maine et Loire (49)",lettre = "P",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-49#chiffre-cle-1")
generer_fiche(nom = "Département de la Mayenne (53)",lettre = "P",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-53#chiffre-cle-1")
generer_fiche(nom = "Département de la Sarthe (72)",lettre = "P",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-72#chiffre-cle-1")
generer_fiche(nom = "Département de la Vendée (85)",lettre = "P",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-85#chiffre-cle-1")


#Région PACA
generer_fiche(nom = "Région Provence Alpes Cote d'Azur",lettre = "PA",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=REG-93#chiffre-cle-1")

generer_fiche(nom = "Département des Alpes de Haute Provence (04)",lettre = "PA",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-04#chiffre-cle-1")
generer_fiche(nom = "Département des Alpes Maritimes (06)",lettre = "PA",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-06#chiffre-cle-1")
generer_fiche(nom = "Département des Bouches-du-Rhône (13)",lettre = "PA",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-13#chiffre-cle-1")
generer_fiche(nom = "Département des Hautes-Alpes (05)",lettre = "PA",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-05#chiffre-cle-1")
generer_fiche(nom = "Département du Var (83)",lettre = "PA",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-83#chiffre-cle-1")
generer_fiche(nom = "Département du Vaucluse (84)",lettre = "PA",lien_internet = "https://www.insee.fr/fr/statistiques/2011101?geo=DEP-84#chiffre-cle-1")
