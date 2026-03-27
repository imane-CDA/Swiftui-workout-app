//
//  Workout.swift
//  workoutTimeRevision
//
//  Created by Pro on 26/03/2026.
//

// nécéssaire pour Identifiable.
import Foundation

/*
                        -- STRUCTURE --
 
 Une struct est un type valeur :
 - Chaque instance est indépendante des autres.
 - var = propriétés modifiables, let = propriétés constantes.
 - Méthodes qui modifient les propriétés doivent être mutating.
 - Copier une struct crée une nouvelle instance, les modifications sur la copie n'affectent pas l'original.

 Utilisation typique : Modèles pour SwiftUI (List, ForEach) ou MVVM
*/


// Type fermé représentant les catégories d’exercices. Chaque case (.cardio, .musculation, .gainage) est une valeur possible.
enum Category {
    case cardio
    case musculation
    case gainage
    
    // La propriété title retourne le nom lisible de chaque catégorie
    var title: String {
        switch self {
        case .cardio: return "Cardio"
        case .musculation: return "Musculation"
        case .gainage: return "Gainage"
        }
    }
}


enum Difficulty {
    case facile
    case intermédiaire
    case avancé
    
    var title: String {
        switch self {
        case .facile: return "Facile"
        case .intermédiaire: return "Intermédiaire"
        case .avancé: return "Avancé"
        }
    }
}


// Modèle Workout
struct Workout: Identifiable {
    // Identifiable pour SwiftUI List / ForEach
    let id = UUID()
    
    let name: String
    let image: String
    let category: Category     // category de type Category
    let difficulty: Difficulty // difficulty de type Difficulty
    let description: String
}

// tableau d'instanciations de l'objet Workout
let workouts = [
    Workout(
        name: "Burpees",
        image: "burpee",
        category: .cardio,
        difficulty: .intermédiaire,
        description: "Un exercice complet sollicitant tout le corps."
    ),
    Workout(
        name: "Squats",
        image: "squat",
        category: .musculation,
        difficulty: .facile,
        description: "Idéal pour renforcer les jambes et les fessiers."
    ),
    Workout(
        name: "Push-ups",
        image: "pompes",
        category: .musculation,
        difficulty: .intermédiaire,
        description: "Un classique pour le haut du corps et les bras."
    ),
    Workout(
        name: "Jump Rope",
        image: "rope",
        category: .cardio,
        difficulty: .avancé,
        description: "Parfait pour améliorer l'endurance et la coordination."
    ),
    Workout(
        name: "Plank",
        image: "plank",
        category: .gainage,
        difficulty: .intermédiaire,
        description: "Un exercice statique pour un gainage efficace."
    )
]
