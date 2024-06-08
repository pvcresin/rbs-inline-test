# RBS::Inline test

## libs

- rbs-inline
- steep

```console
bundle install
```

```console
fswatch -0 lib | xargs -0 -n1 bundle exec rbs-inline --output
```

edit .rb and generate .rbs files

```
lib/*.rb -> sig/generated/*.rbs
```
