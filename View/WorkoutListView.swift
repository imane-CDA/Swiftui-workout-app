//
//  MainView.swift
//  workoutTimeRevision
//
//  Created by Pro on 26/03/2026.
//

import SwiftUI

struct WorkoutListView: View {

    var body: some View {

        // NavigationStack : gére la navigation entre vues
        NavigationStack {
            
            // ScrollView : permet le défilement de la liste
            ScrollView {
                
                // spacing = 10 points entre chaque carte
                VStack(spacing: 14) {
                    
                    // ForEach : parcourt le tableau 'workouts'
                    // Chaque workout doit être Identifiable pour que ForEach fonctionne
                    ForEach(workouts) { workout in
                        
                        // NavigationLink permet de rendre chaque carte cliquable
                        // destination = vue de détail pour ce workout
                        // workout: → le paramètre de la vue (défini dans WorkoutCardView comme let workout: Workout).
                        // workout → la variable dynamique de la boucle ForEach, qui contient une instance du type Workout.
                        NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                            
                            // Affiche la carte customisée correspondant à ce workout
                            WorkoutCardView(workout: workout)
                            
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Workouts")
        }
    }
}

#Preview {
    WorkoutListView()
}
