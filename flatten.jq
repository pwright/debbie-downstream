# Manipulate JSON output of Vale using jq.
# cat build/test-before.json | jq --from-file flatten.jq > build/vale-flat.json

#attempt1
#to_entries|map(.key) as $keys| (map(.value)|transpose) as $values |$values|map([$keys, .] | transpose| map( {(.[0]): .[1]} ) | add)

# works to create a key value table
[leaf_paths as $path | {"key": $path | join("."), "value": getpath($path)}] | from_entries

