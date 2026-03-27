//
//  WorkoutCardView.swift
//  workoutTimeRevision
//
//  Created by Pro on 26/03/2026.
//

import SwiftUI

struct WorkoutCardView: View {
    
    // Propriété reçue en paramètre
    // Contient les informations du workout à afficher dans la carte
    let workout: Workout
    
    var body: some View {
        
        // Image du workout affichée comme carte
        Image(workout.image)
            .resizable() // Permet de redimensionner l’image
            .scaledToFill() // Remplit tout l’espace sans déformer l’image
            .frame(width: 350, height: 150) // Taille de la carte
            .cornerRadius(8) // Coins arrondis
            
            // Overlay : permet de superposer du contenu par-dessus l’image
            .overlay(
                
                // ZStack : superpose les éléments (dégradé + texte)
                ZStack {
                    
                    // Dégradé noir → transparent
                    // Sert à améliorer la lisibilité du texte
                    LinearGradient(
                        colors: [Color.black.opacity(0.6), Color.clear],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                    
                    // Contenu texte superposé sur l’image
                    VStack {
                        
                        // Pousse le contenu vers le bas
                        Spacer()
                        
                        // Ligne contenant la catégorie
                        HStack {
                            
                            // Catégorie en majuscules
                            Text(workout.category.title.uppercased())
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(.primary)
                                .padding(4)
                                .background(Color.purple.opacity(0.7)) // Fond violet
                                .cornerRadius(4)
                            
                            Spacer()
                        }
                        
                        // Nom du workout
                        HStack {
                            
                            Text(workout.name)
                                .foregroundColor(.primary)
                                .bold()
                            
                            Spacer()
                            
                        }
                        .padding(.bottom, 2)
                        
                        // Niveau du workout
                        HStack {
                            
                            Text("Niveau:  \(workout.difficulty.title)")
                                .font(.system(size: 14, weight: .light))
                                .foregroundColor(.primary)
                            
                            Spacer()
                        }
                    }
                    
                    // Padding interne pour aérer le contenu
                    .padding(20)
                }
                
                // Coins arrondis sur l’overlay
                .cornerRadius(8)
            )
    }
}

#Preview {
    WorkoutCardView(workout: Workout(
        name: "Burpees",
        image: "burpee",
        category: .cardio,
        difficulty: .intermédiaire,
        description: "Un exercice complet sollicitant tout le corps."
    ))
}
