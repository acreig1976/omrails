Fabricator(:relationship) do
  followed_id 1
end

Fabricator(:invalid_relationship, from: :relationship) do
  followed_id nil
end
