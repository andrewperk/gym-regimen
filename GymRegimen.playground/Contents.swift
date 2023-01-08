// Exercise struct to model exercises for our Regimen
struct Exercise {
    var name: String
    var muscleGroups: [String]
    var reps: Int
    var sets: Int
    var totalReps: Int

    init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
        self.name = name
        self.muscleGroups = muscleGroups
        self.reps = reps
        self.sets = sets
        self.totalReps = reps * sets
    }
}

// Create some exercises
var pushUp: Exercise = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

var sitUps: Exercise = Exercise(name: "Sit up", muscleGroups: ["Core", "Abs", "Back"], reps: 15, sets: 5)

var squats: Exercise = Exercise(name: "Squat", muscleGroups: ["Thighs", "Calves", "Core"], reps: 20, sets: 3)

// Regimen struct to model the exercises performed throughout the week
struct Regimen {
    var dayOfWeek: String
    var exercises: [Exercise]

    init(dayOfWeek: String, exercises: [Exercise]) {
        self.dayOfWeek = dayOfWeek
        self.exercises = exercises
    }

    // Print the exercises
    func printExercisePlan() -> Void {
        print("Today is \(self.dayOfWeek) and the plan is to:")

        // Loop through the exercises
        for exercise in self.exercises {
            print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
            print("Thats a total of \(exercise.totalReps) \(exercise.name)s")
        }
    }

    // Add an Exercise to the current Regimen
    mutating func addExercise(exercise: Exercise) -> Void {
        self.exercises.append(exercise)
    }
}

// Monday Regimen
var mondayRegimen: Regimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])
mondayRegimen.printExercisePlan()
print("-------")

// Wednesday Regimen
var wednesdayRegimen: Regimen = Regimen(dayOfWeek: "Wednesday", exercises: [sitUps, squats])
wednesdayRegimen.printExercisePlan()
print("-------")

// Add an Exercise to Wednesday
wednesdayRegimen.addExercise(exercise: pushUp)
wednesdayRegimen.printExercisePlan()


