# debbie-downstream

Replace antora links

Before starting, replace the symlink to modules, currently set to `../debezium/documentation/modules` with a symlink to your repo.

Install a yaml library:

```bash
pip install pyyaml
```


## Test your repo for antora links

Antora supports complex links, let's see what's in your repo:

```bash
./test.sh
```

## Replace antora links with substitutions

The file sub.csv must contain all the substitutions required, the example shows

```bash
./sub.sh
```

## Test your repo for antora links

All the 
