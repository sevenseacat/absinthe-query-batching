defmodule CourseLoaderWeb.GraphQL.ContentTypes do
  use Absinthe.Schema.Notation

  alias CourseLoaderWeb.GraphQL.Resolvers

  object :course do
    field :id, non_null(:id)
    field :code, non_null(:string)
    field :name, non_null(:string)

    field :auto_enrolment_count, non_null(:integer) do
      resolve(&Resolvers.course_auto_enrolment_count/3)
    end

    field :manual_enrolment_count, non_null(:integer) do
      resolve(&Resolvers.course_manual_enrolment_count/3)
    end
  end
end
