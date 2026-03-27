/*
 ===============================
        WORKOUT APP
 ===============================

 🎯 Objectif :
 Application SwiftUI basée sur MVVM permettant d'afficher une liste de workouts.

 ===============================
        ARCHITECTURE MVVM
 ===============================

 MODEL → Données (Workout, Category, Difficulty)
 VIEW → Interface utilisateur (SwiftUI)
 VIEWMODEL → Logique (non implémentée pour le moment)

 ===============================
        MODEL
 ===============================

 Workout :
 - struct
 - Identifiable
 - name, image, category, difficulty, description

 Category (enum) :
 - cardio, musculation, gainage
 - computed property : title

 Difficulty (enum) :
 - facile, intermédiaire, avancé
 - computed property : title

 ===============================
        VIEWS
 ===============================

 WorkoutListView :
 - Liste des workouts
 - NavigationStack + ScrollView + ForEach

 WorkoutCardView :
 - Carte réutilisable
 - Image + dégradé + texte

 WorkoutDetailView :
 - Vue détail complète

 ===============================
        DATA FLOW
 ===============================

 workouts
    ↓
 ForEach
    ↓
 WorkoutCardView
    ↓
 NavigationLink
    ↓
 WorkoutDetailView

 ===============================
        SWIFTUI CONCEPTS
 ===============================

 - ZStack
 - VStack / HStack
 - NavigationStack
 - NavigationLink
 - ForEach
 - Identifiable

 ===============================
        BONNES PRATIQUES
 ===============================

 - Couleurs adaptatives (.primary, .secondary)
 - Computed properties dans les enums
 - Séparation des responsabilités (MVVM)
*/
