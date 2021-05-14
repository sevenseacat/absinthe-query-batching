# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CourseLoader.Repo.insert!(%CourseLoader.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CourseLoader.{Courses, Repo}

courses = [
  %{id: 1, code: "433-252", name: "Software Engineering Principles & Tools"},
  %{id: 2, code: "433-303", name: "Artificial Intelligence"},
  %{id: 3, code: "433-351", name: "Database Systems"},
  %{id: 4, code: "433-352", name: "Data on the Web"},
  %{id: 5, code: "433-361", name: "Programming Language Implementation"},
  %{id: 6, code: "433-371", name: "Interactive System Design"}
]

students = [
  %{id: 1, name: "Rebecca Le"},
  %{id: 2, name: "Margaret Hamilton"},
  %{id: 3, name: "Grace Hopper"},
  %{id: 4, name: "Ada Lovelace"}
]

enrolments = [
  %{type: "auto", student_id: 1, course_id: 1},
  %{type: "manual", student_id: 1, course_id: 1},
  %{type: "manual", student_id: 1, course_id: 2},
  %{type: "manual", student_id: 1, course_id: 3},
  %{type: "manual", student_id: 1, course_id: 4},
  %{type: "auto", student_id: 2, course_id: 2},
  %{type: "manual", student_id: 2, course_id: 4},
  %{type: "auto", student_id: 2, course_id: 5},
  %{type: "auto", student_id: 2, course_id: 6},
  %{type: "manual", student_id: 3, course_id: 1},
  %{type: "auto", student_id: 3, course_id: 2},
  %{type: "auto", student_id: 3, course_id: 3},
  %{type: "manual", student_id: 3, course_id: 4},
  %{type: "auto", student_id: 3, course_id: 5},
  %{type: "auto", student_id: 3, course_id: 6},
  %{type: "auto", student_id: 4, course_id: 1},
  %{type: "auto", student_id: 4, course_id: 6}
]

Repo.insert_all(Courses.Course, courses)
Repo.insert_all(Courses.Student, students)
Repo.insert_all(Courses.Enrolment, enrolments)
