json.extract! course, :id, :name, :par, :yards, :course_rating, :user_average, :slope, :created_at, :updated_at
json.url course_url(course, format: :json)