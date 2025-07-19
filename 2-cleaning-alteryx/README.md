# 🧼 Data Cleaning avec Alteryx
Dans le cadre du nettoyage des données du dataset Coffee Shop, j’ai d’abord utilisé l’outil Input Data pour établir une connexion directe au fichier source au format CSV. Avec l’outil Select, j’ai converti les champs storeID et productID en type entier (Int) afin d'assurer une cohérence typologique, et j’ai désactivé les colonnes non pertinentes identifiées comme unknown. L’outil Data Cleansing a été appliqué pour normaliser les chaînes de caractères en supprimant les espaces inutiles, tabulations, sauts de ligne, ainsi que les espaces en début et fin de champ. Une nouvelle colonne Total Amount a été générée via l’outil Formula, en multipliant la quantité de transaction (transaction qty) par le prix unitaire (unit price). L’outil Sort a ensuite été utilisé pour ordonner les enregistrements par transaction date et transaction time de manière ascendante. Enfin, les données nettoyées et enrichies ont été exportées vers une base de données SQL Server via l’outil Output Data pour une exploitation analytique ultérieure
<img width="14509" height="70" alt="image" src="https://github.com/user-attachments/assets/16b1c9a4-b144-42ca-9206-5511f90d1ac8" />


## Outils utilisés
- 📥 **Input Data** : import fichier CSV
- 🧾 **Select** : conversion des champs `store_id`, `product_id` en entier, suppression colonnes inutiles
- 🧼 **Data Cleanse** : suppression espaces, tabulations, retours ligne
- 🧮 **Formula** : calcul de `total_amount = transaction_qty * unit_price`
- 📅 **Sort** : tri par date croissante

## Résultat
Fichier nettoyé prêt pour ingestion dans une base SQL 
