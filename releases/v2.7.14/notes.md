# AKRX World Manager 2.7.14

- Projets Noggit : « Installer / Mettre à jour » marche aussi sur tes propres projets. Tu récupères ce qu’un coéquipier a publié depuis un autre PC, sans perdre tes modifications locales. Si un fichier a été modifié des deux côtés, l’app te demande lequel garder.
- Patchs du launcher : « Fixer un patch » devient « Réparer ». Il remet une map dans sa propre plage d’IDs (10 millions par map, par exemple 940000000) : patch.json, WDT et custom-listfile.csv de MapUpconverter sont mis à jour ensemble, donc le conflit ne revient plus à la conversion suivante. Sauvegarde automatique dans _retail_\Backups, refusé si WoW ou MapUpconverter est ouvert.
- Les patch.json enregistrés avec un BOM ne font plus échouer la réparation.
