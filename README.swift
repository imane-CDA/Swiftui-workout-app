🏋️ SwiftUI Workout App

Application iOS développée en SwiftUI permettant d’afficher une liste de workouts avec navigation vers une vue de détail.  
Projet réalisé dans le cadre d’une formation, basé sur l’architecture MVVM et les bonnes pratiques de développement.

---

📱 Fonctionnalités

- Affichage d’une liste de workouts
- Carte personnalisée pour chaque exercice
- Navigation vers une vue de détail
- Affichage des informations :
  - nom
  - catégorie
  - niveau de difficulté
  - description
- Interface moderne avec dégradé

---

🧱 Architecture

Le projet suit l’architecture MVVM :

workouts
↓
ForEach
↓
WorkoutCardView
↓
NavigationLink
↓
WorkoutDetailView

---

⚙️ Concepts SwiftUI utilisés

- ZStack
- VStack / HStack
- NavigationStack
- NavigationLink
- ForEach
- Identifiable

---

✅ Bonnes pratiques

- Utilisation de couleurs adaptatives (.primary, .secondary)
- Computed properties dans les enums
- Séparation des responsabilités (MVVM)

