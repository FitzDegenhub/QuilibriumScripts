# Quilibrium node setup guide and scripts
>[!WARNING]
> Before using the scripts in this repo, please follow the [new guide on Gitbook](https://iri.quest/quilibrium-node-guide).

⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠈⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠈⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠉⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⡀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣰⡆⠀⢀⣾⣷⣤⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⣠⣾⣿⡄⠀⠀⣶⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣸⣿⣿⣿⣷⡀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⣴⣿⣿⣿⣿⡄⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣿⡿⢁⣿⣿⣿⡀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⣼⣿⣿⣇⠻⣿⡇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣿⠃⢸⣿⣿⣿⣷⠀⠀⠈⢻⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠉⠀⡀⣰⣿⣿⣿⣿⠀⢻⡇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠘⠀⢸⣿⣿⣿⣿⣦⣷⣄⠀⠁⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⢀⣴⣧⣿⣿⣿⣿⡿⠀⠈⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⣠⣶⠀⢻⣿⣿⣿⣿⣿⣿⣦⡀⢀⠀⠉⠛⠛⠿⠿⠿⠿⠛⠋⠀⢀⠀⣰⣿⣿⣿⣿⣿⣿⣿⠃⢰⣦⡀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣟⣠⡆⠀⠀⣼⣿⣿⣷⣀⠹⢿⣿⣿⣿⣿⣿⣿⣦⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣿⣯⣾⣿⣿⣿⣿⣿⣿⡿⢁⣴⣿⣿⣷⡄⠀⢰⣦⣌⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣸⣿⣿⣿⣿⣿⣿⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣾⣿⣿⣿⣿⣿⣷⡀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣩⣿⣿⣿⠿⠛⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡙⠻⢿⣿⣿⣿⡁⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠘⢩⣿⠟⠁⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠈⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠙⢿⣌⠃⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠛⠁⠀⣠⣿⣿⣿⣿⣿⣿⡿⠟⣿⣿⣿⣿⣿⣿⣿⡟⠀⠈⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠙⠃⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⠟⠉⠀⠒⠛⠛⠋⠁⠹⠛⣿⣿⠁⠀⠀⢻⣿⡟⣿⠀⠈⠛⠓⠓⠂⠈⠛⢿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⢰⣿⣿⣿⡿⠁⠀⣠⣾⣷⣶⣤⣴⣆⠀⣥⠈⠃⠀⠀⠀⠀⠛⢀⠇⢠⣶⣤⣴⣶⣷⣦⡀⠀⠹⣿⣿⣿⣧⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⠠⠀⢀⣀⠀⣀⡈⢉⠻⣿⡄⢹⠀⠀⠀⠀⠀⠀⠀⢸⠀⣾⡿⠋⠉⣀⠀⣀⣀⠀⠁⢹⣿⣿⣿⣇⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⡿⠃⠀⢀⣤⡎⠀⣼⣿⣿⣿⣿⡇⠀⠛⣿⣄⡈⠳⠶⠇⠘⠿⠘⠀⠀⠀⠀⠀⠀⠀⠘⠸⠟⠀⠷⠆⠉⣀⣼⠛⠂⠀⣄⣿⣿⣿⣿⡄⠘⣦⡀⠀⠀⠹⣿⣿⣿⣿⣿
⣿⣿⣿⣿⡟⠁⠀⣴⣿⠏⠀⢸⣿⡿⠛⠁⣼⣷⣶⠂⠈⠛⣿⣷⣶⣶⠄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠶⣶⣶⣾⣛⠉⠀⢶⣶⣿⡄⠙⠿⣿⣷⠀⠘⢿⣧⡀⠀⠹⣿⣿⣿⣿
⣿⣿⣿⡟⠀⢀⣾⡿⠃⠀⠀⠟⠉⠀⠀⢸⣿⣯⣁⣀⣀⡉⠉⠁⣀⠉⠉⠀⢀⡀⠀⠀⠀⠀⠀⠀⣠⠀⠉⠛⣁⡀⠉⠉⣁⣀⣀⣩⣿⣷⠀⠀⠈⠙⠇⠀⠈⢻⣿⣆⠀⠘⣿⣿⣿
⣿⣿⡿⠁⢠⣾⡿⠁⠀⠀⣀⣴⡟⠀⠀⡿⢿⣿⣿⣿⣭⣴⣶⣾⣿⣧⠀⣠⣿⣿⡀⠀⠀⠀⠀⣼⣿⣦⠀⠀⣿⣿⣶⣦⣬⣽⣿⣿⣿⢿⡇⠀⠸⣶⣄⡀⠀⠀⠹⣿⣆⠀⢹⣿⣿
⣿⣿⡇⢠⣾⡿⠁⢀⣴⣾⣿⣿⡇⠀⠀⢠⣾⣿⡿⠿⣿⣿⣿⣿⣿⡇⢀⣿⣿⣿⣷⡀⠀⠀⣾⣿⣿⣿⣦⠀⣿⣿⣿⣿⣿⣿⠿⣿⣿⣆⠁⠀⠀⣿⣿⣿⣶⣄⡀⢹⣿⣆⠈⢿⣿
⣿⣿⢀⣾⣿⢇⣴⣿⣿⣿⣿⣿⡇⠀⠀⡼⠛⠉⠀⣾⣿⣿⣿⣿⣿⡇⣼⣿⣿⣿⣿⣿⡀⣼⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣆⠀⠙⢿⡆⠀⠀⣼⣿⣿⣿⣿⣷⡄⢻⣿⡆⢸⣿
⣿⡇⢸⣿⡿⠞⠛⠉⠉⠉⢸⣿⡇⠀⠀⢀⡀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣸⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⠀⠀⡀⠀⠀⢀⣿⣿⡈⠉⠉⠙⠻⢾⣿⣷⠸⣿
⣿⠇⣾⠏⠁⣠⣆⠀⠀⠀⣾⣿⣷⠀⢀⣾⣧⠀⠸⣿⣿⣿⣿⢿⣿⣿⣿⣿⠛⠉⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⢿⣿⣿⣿⡿⠀⢠⣿⡆⠀⢸⣿⣿⡇⠀⠀⢠⣦⣀⠉⢿⡇⢿
⡿⠀⠁⣰⣿⣿⣿⡄⠀⠀⢻⣿⣿⡇⢸⣿⣿⣧⠀⠻⣿⣿⠇⢼⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⣿⣿⡿⠁⢠⣿⣿⣿⢀⣾⣿⣿⠇⠀⠀⣸⣿⣿⣷⣌⠁⢸
⠇⣠⣾⣿⣿⣿⣿⣧⠀⠀⢸⣿⣿⣿⣾⣿⣿⣿⣷⡀⠙⢿⡆⠘⣿⣿⣿⣧⣤⣤⣤⠀⠀⠀⢠⣤⣤⣠⣿⣿⣿⡿⠀⣿⠟⠀⣰⣿⣿⣿⣿⣾⣿⣿⣿⠀⠀⢰⣿⣿⣿⣿⣿⣦⡈
⣴⣿⣿⣿⣿⣿⣿⣿⣇⠀⠈⣿⣿⣿⠿⢿⣿⣿⣿⣿⣦⡀⠙⠀⠻⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⡿⠁⠐⠁⣠⣾⣿⣿⣿⣿⡿⢿⣿⣿⡇⠀⢠⣾⣿⣿⣿⣿⣿⣿⣷
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠸⣿⡏⠀⣄⡙⠻⣿⣿⣿⣿⣦⠀⠀⠙⠿⣿⣿⣿⡷⠀⠀⠀⢴⣿⣿⣿⡿⠟⠁⠀⢠⣾⣿⣿⣿⡿⠋⢁⡄⢸⣿⡟⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠸⡇⠀⣿⣿⣦⡈⠻⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⣤⣤⣶⣦⣤⡄⠀⠀⠀⠀⠀⣴⣿⣿⣿⡿⢋⣤⣾⣿⡇⢸⡟⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⣿⣿⣿⣿⣧⡈⢿⣿⣿⣧⠀⠀⠀⠀⠀⠈⠙⠛⠛⠉⠀⠀⠀⠀⠀⢰⣿⣿⡿⠋⣴⣿⣿⣿⣿⡇⠈⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⢸⣿⣿⣿⣿⣿⣄⠙⣿⣿⣆⢠⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣦⢀⣿⣿⡟⢁⣾⣿⣿⣿⣿⡿⠁⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣆⠘⢿⣿⣾⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⣾⠻⣾⣿⠏⢀⣿⣿⣿⣿⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠈⢿⠃⠘⣿⡀⣠⠀⠀⠀⢀⠀⣼⡿⠀⣿⠏⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣷⠸⡄⠀⠀⣿⢠⣿⡇⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⣠⠀⢻⣿⣆⣧⠀⢀⣧⣿⣿⠀⢠⡀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣿⡀⠈⣿⣿⣿⠀⢸⣿⣿⡟⠀⣾⡇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢠⣿⣷⠀⢻⣿⣿⡀⣿⣿⣿⠁⢰⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣼⣿⣿⣆⠈⣿⣿⣿⣿⣿⠏⢀⣿⣿⣿⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠘⡿⢻⠻⡿⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⣿⠀⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠹⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
