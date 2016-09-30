# AppStartSpec

## setup

```
$ git clone git@github.com:amorphid/app_start_spec.git
$ cd app_start_spec
$ mix deps.get
$ mix dialyzer.plt
```

## dialyzer generates warning

```
$ git checkout start_warning
$ mix dialyzer

  Proceeding with analysis...
  app_start_spec.ex:8: The return type 'ignore' in the specification of start/2 is not a subtype of {'error',_} | {'ok',pid()} | {'ok',pid(),_}, which is the expected return type for the callback of 'Elixir.Application' behaviour
  done in 0m1.82s
  done (warnings were emitted)
```

## dialyzer generates no warning

```
$ git checkout no_start_warning
$ mix dialyzer

  Proceeding with analysis... done in 0m1.73s
  done (passed successfully)
```
