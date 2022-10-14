# Convert json to csv

# cat build/vale-flat.json | jq -r --from-file csv.jq > build/flat.csv

(map(keys) | add | unique) as $cols | map(. as $row | $cols | map($row[.])) as $rows | $cols, $rows[] | @csv