# Revenus hebdomadaires 
**Résumé des observations :**

Tendance générale : On observe une croissance constante des revenus hebdomadaires. Le chiffre d'affaires passe de 17K en semaine 1 à près de 38.5K en semaine 20, soit plus du double en 5 mois.
 Stabilité initiale : De la semaine 1 à 6, les ventes restent relativement stables (~17K à 19K). Cela peut correspondre à une période d'observation, ou à un début d'année commercialement calme.
 Croissance marquée :
À partir de la semaine 10, on observe une accélération nette : passage de ~22K à 26K, puis 29K et enfin un pic à 38,476.55 en semaine 20.
Cette évolution suggère soit une hausse de la fréquentation, soit une augmentation du panier moyen ou du volume des transactions.
 ![Revenus%20hebdomadaires(Revenus%20hebdomadaires.png)](Revenus%20hebdomadaires.png)

# Prix moyen par catégorie 
**Résumé des observations :**
Coffee beans (21.02) et Branded (17.72) sont les catégories les plus chères, probablement des produits spécialisés ou vendus en quantités importantes/unitaires élevées.
 Produits à fort volume mais bas prix :
Coffee, Bakery, Tea, Flavours ont un prix moyen faible (<4€), suggérant des produits de consommation courante.
En particulier Flavours (0.80€) peut être un complément (add-on) aux boissons principales.
 Panier moyen impacté ?
•Si les catégories Coffee beans, Branded, Loose Tea sont peu vendues mais très chères, elles peuvent gonfler artificiellement les revenus hebdomadaires.
![Prix%20moyen%20par%20catégorie(Prix%20moyen%20par%20catégorie.png)](Prix%20moyen%20par%20catégorie.png)

# Valeur moyenne du panier
**Résumé des observations :**
En moyenne, chaque transaction individuelle génère 4.69€ de chiffre d’affaires.
C’est cohérent avec les prix moyens des catégories les plus fréquemment consommées (Coffee, Bakery, Tea).
 Corrélation possible :
Malgré la présence de produits chers (Coffee beans, Branded), le panier reste modeste, suggérant que :
•Ils sont vendus peu souvent,
•Le volume de vente est concentré sur des produits à bas prix.
![Valeur%20moyenne%20du%20panier(Valeur%20moyenne%20du%20panier.png)](Valeur%20moyenne%20du%20panier.png)
 # Top magasins par chiffre d’affaires
**Résumé des observations :**
1. Classement serré du top 3
Écart très faible entre les 3 premiers magasins : seulement 6,454 € entre le 1er et le 3e.
Cela indique une concurrence interne intense.
Ces magasins se trouvent probablement dans des zones à fort passage ou à clientèle fidèle.
2. Hell's Kitchen en tête
Peut résulter :
d’un meilleur emplacement (zone touristique ? bureaux ?),
d’une meilleure gestion locale (personnel, offre produit),
ou d’une clientèle haut de gamme achetant plus de produits premium.
![Top%20magasins%20par%20chiffre%20d'affaires(Top%20magasins%20par%20chiffre%20d'affaires.png)](Top%20magasins%20par%20chiffre%20d'affaires.png)
# Vue temporaire par catégorie
**Résumé des observations :**
•1. 🥇 Coffee & Tea = piliers
Ensemble, ils génèrent près de 470K€, soit plus de 60% du chiffre d’affaires total.
Cela fait d’eux des produits d’appel.
À protéger, valoriser et exploiter stratégiquement (fidélisation, abonnements, campagnes promos).
2.  Produits premium peu vendus mais très rentables
Exemple : Coffee beans → 1,753 ventes mais 40K€, soit ≈ 22.86€/vente.
Idéal pour des stratégies haut de gamme :
vente en ligne,abonnements café,échantillons gratuits pour inciter à l’achat.
3.  Produits à rentabilité douteuse
Flavours (6.7K ventes → 8.4K€) et Packaged Chocolate (487 ventes → 4.4K€) → revenu moyen très faible.
Risque d’être coûteux à gérer (logistique, stockage) pour peu de marge.
4.  Pistes stratégiques :
Créer des packs avec Flavours ou Chocolates pour augmenter la valeur du panier.
Retirer ou revoir le pricing des produits à faible rotation et faible revenu.
![Vue%20temporaire%20par%20catégorie(Vue%20temporaire%20par%20catégorie.png)](Vue%20temporaire%20par%20catégorie.png)
# Régression linéaire multiple
**Résumé des observations :**
Utiliser pour prédiction et simulation business
 Modèle fiable et réaliste
Label ≈ Prediction : les résultats sont très proches, avec une erreur négligeable.
Exemple : pour [2, 3.1] on a 6.2€ réel vs 6.314€ prédit.
![Régression%20linéaire%20multiple(Régression%20linéaire%20multiple.png)](Régression%20linéaire%20multiple.png)
# Analyse des ventes par jour de la semaine
**Résumé des observations :**
1. Les jours les plus rentables :
Vendredi (6) et Lundi (2) → Meilleures performances. Peut être lié à :
des offres du week-end lancées dès vendredi,
une hausse post-week-end le lundi (effet reprise ?)
 2. Jour le plus faible : Samedi (7)
Hypothèse :
Les clients stockent déjà vendredi ?Moins de passages en ville ?Peut-être un réajustement des horaires ?
3. Écarts modérés mais significatifs
•Amplitude ≈ 4,478€ entre meilleur (Vendredi) et pire (Samedi) jour.
 Recommandations stratégiques :
•Campagne de stimulation le samedi :
•Promos exclusives pour compenser la faiblesse.
•Optimiser les ressources humaines :
•Réduire les effectifs ou réallouer les stocks selon les jours.
Analyser par produit & magasin pour comprendre les comportements locaux
![Analyse%20des%20ventes%20par%20jour%20de%20la%20semaine(Analyse%20des%20ventes%20par%20jour%20de%20la%20semaine.png]
(Analyse%20des%20ventes%20par%20jour%20de%20la%20semaine.png)
# Séries temporelles
**Résumé des observations :**
•Revenu croissant au fil des semaines avec quelques baisses temporaires.
•Point culminant à la semaine 20 avec 38,476.55, qui représente une croissance constante depuis la semaine 14.
Périodes clés à observer :
Semaine 14 → 15 → 16 → 18 → 20 : forte progression.
Semaine 4 → 5 ou 16 → 17 : légères baisses temporaires.
Produits à forte croissance
product_id = 1 a un pic exceptionnel à la semaine 10 avec une croissance de +1200%.
product_id = 11 : croissance de +200% entre semaine 2 et 3.
Ces hausses extrêmes peuvent s’expliquer par :
• Lancement de promotions,
• Disponibilité soudaine (après rupture ?),
• Ciblage marketing efficace.
• Fréquence des pics :
•Les produits 1 et 10 affichent plusieurs croissances > 200% → candidats à succès rapide.
![Séries%20temporelles(Séries%20temporelles.png)](Séries%20temporelles.png)
# Matrice de corrélation
**Résumé des observations :**
 1. unit_price ↔ revenue : corrélation forte (0.686)
 Plus le prix est élevé, plus le revenu augmente:Logique et attendu.
 2. transaction_qty ↔ revenue : corrélation modérée (0.356)
Plus on vend en quantité, plus le revenu augmente, mais effet limité.
Cela reflète que certains articles bon marché peuvent être vendus en grand volume mais ne génèrent pas autant de revenus que quelques ventes premium.
3. transaction_qty ↔ unit_price : corrélation négative (-0.124)
Plus le prix est élevé, moins on vend en quantité, ce qui est courant.
Stratégie de volume vs marge.
 Exploitation :
Pour des stratégies de pricing :
Confirmer que des hausses de prix impactent peu les quantités (élasticité faible).
Confirmer l’intérêt d’offres en bundle, surtout pour produits peu corrélés entre eux
 ![Matrice%20de%20corrélation(Matrice%20de%20corrélation.png)](Matrice%20de%20corrélation.png)
# RFM Segmentation
**Résumé des observations :**
Recency = 736 jours
Cela signifie que tous les magasins (3, 5, 8) n’ont pas effectué de vente depuis plus de 2 ans (~2 ans = 730 jours).
Soit les données de ventes s'arrêtent il y a 2 ans, soit ces magasins sont inactifs récemment.
 Frequency : nombre de transactions
Magasin 8 a la fréquence la plus élevée (50,735), suivi de 3 (50,599) puis 5 (47,782).
Les écarts sont faibles → comportement similaire en termes de volume d’opérations.
 Monetary : chiffre d’affaires total
Tous les magasins ont un CA très proche (~230K à 236K).
Cela suggère que ces 3 magasins sont de taille/activité comparable, mais sont affectés à différents clusters.
 ![RFM%20Segmentation(RFM%20Segmentation.png)](RFM%20Segmentation.png)



