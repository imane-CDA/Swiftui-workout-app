//
//  WorkoutDetailView.swift
//  workoutTimeRevision
//
//  Created by Pro on 26/03/2026.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    // Propriété reçue depuis la vue précédente (NavigationLink)
    // Contient toutes les informations du workout à afficher
    let workout: Workout
    
    var body: some View {
        
        // VStack : empile les éléments verticalement
        VStack {
            
            // Image du workout
            // resizable : permet de modifier la taille
            // scaledToFit : garde les proportions de l’image
            // cornerRadius : arrondit les coins
            Image(workout.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
            
            // Conteneur pour les informations textuelles
            // alignment .leading : aligné à gauche
            // spacing : espace entre les éléments
            VStack(alignment: .leading, spacing: 12) {
                
                // Nom du workout
                Text(workout.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.primary)
                
                // Ligne contenant la catégorie
                HStack {
                    
                    // Label
                    Text("Catégorie :")
                        .foregroundColor(.secondary)
                    
                    // Valeur dynamique
                    Text(workout.category.title)
                        .foregroundColor(.purple)
                }
                
                // Ligne contenant la difficulté
                HStack {
                    
                    // Label
                    Text("Difficulté :")
                        .foregroundColor(.secondary)
                    
                    // Valeur dynamique
                    Text(workout.difficulty.title)
                        .foregroundColor(.purple)
                }
                
                // Divider : ligne de séparation visuelle
                Divider()
                    .frame(height: 1)
                    .background(Color.gray)
                
                // Description du workout
                HStack {
                    
                    Text(workout.description)
                        .foregroundColor(.primary)
                        .bold()
                }
            }
            
            // Padding autour du contenu
            .padding()
            
            // Fond de la carte (style système)
            .background(Color(.secondarySystemBackground))
            
            // Coins arrondis
            .cornerRadius(8)
            
            // Permet de pousser le contenu vers le haut
            Spacer()
        }
    }
}

#Preview {
    WorkoutDetailView(workout: Workout(
        name: "Burpees",
        image: "burpee",
        category: .cardio,
        difficulty: .intermédiaire,
        description: "Un exercice complet sollicitant tout le corps."
    ))
}
