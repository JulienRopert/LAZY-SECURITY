from googlesearch import search
import os

query = input("Entrez votre requête de recherche : ")
results_file = "resultats.txt"

# Créer le dossier "resultats" s'il n'existe pas encore
if not os.path.exists("resultats"):
    os.mkdir("resultats")

# Effectuer la recherche et afficher les 10 premiers résultats
results = []
for url in search(query, num_results=10):
    print(url)
    results.append(url)

# Enregistrer les résultats dans un fichier texte
with open(os.path.join("resultats", results_file), "w") as f:
    for url in results:
        f.write(url + "\n")
print(f"Les résultats de la recherche ont été enregistrés dans le fichier {results_file} dans le dossier 'resultats'.")
