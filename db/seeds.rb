# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(name: "Michael Kofron", email: "kofronmichael@gmail.com")


#create the course

course = Course.create(name: "TPC TestCourse", sub_course_name: "test_course", hole_count: 18)

#user creates a round

round = Round.create(course_id: course.id, user_id: user.id, score: nil, start_time: DateTime.now, end_time: DateTime.now)

hole_count = 1

18.times do 
    hole = Hole.create(course_id: course.id, number: hole_count, par: rand(3..5), mens_handicap: rand(13..19), womens_handicap: rand(25..31))
    PinLocation.create(location_number: rand(1..7), hole_id: hole.id)
    Tee.create(name: "yellow", hole_id: hole.id, rating: 71.8, slope: 5, distance: rand(112..170))
    Tee.create(name: "white", hole_id: hole.id, rating: 71.8, slope: 5, distance: rand(171..250))
    Tee.create(name: "blue", hole_id: hole.id, rating: 71.8, slope: 5, distance: rand(251..400))
    hole_count += 1
end


#user plays the round, scoring from 3 to 6 strokes on each hole randomly

shot_count = 1

18.times do
    number = 1
    rand(3..6).times do
        shot = Shot.create(round_id: round.id, shot_number: number, hole_id: shot_count, user_id: user.id, club_selection: ["driver", "wedge", "iron", "hybrid"][rand(0..3)], latitude: 54.412020987654722, longitude: 120.839287483748932)
        puts shot.id
        number += 1
    end
    HoleScore.create(user_id: user.id, hole_id: shot_count, score: number - 1, start_time: DateTime.now, end_time: DateTime.now)
    shot_count += 1
end

final_score = 0

user.hole_scores.each do |hole_score|
    final_score += hole_score.score

end

round.update_attribute(:score, Shot.all.count)





