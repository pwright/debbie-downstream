# Antora links

Replace antora links using a csv file to define the substitutions.

If the following pattern is causing difficultly with reuse of Antora content, you can use a substition to replace it:

```adoc
xref:<file>.adoc[]
```

You define what replaces this text in the sub.csv file.

Before starting, replace the symlink `modules`, currently set to `../debezium/documentation/modules` with a symlink to your repo.

Install [Vale.sh - A linter for prose](https://vale.sh/).
You might find [Installing Vale with the RedHat package :: Vale for writers at Red Hat](https://redhat-documentation.github.io/vale-at-red-hat/docs/user-guide/installing-vale-cli/) useful.

Install the python yaml library:

```bash
pip install pyyaml
```


## Test your repo for antora links

Antora supports complex links, let's see what's in your repo:

```bash
./test-before.sh
```

## Replace antora links with substitutions

The file sub.csv must contain all the substitutions required, the example shows

```bash
./sub.sh
```

## Test your repo for antora links

All the unsupported links should now be replaced and you can check with:

```bash
./test-after.sh
```

