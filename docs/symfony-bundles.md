# Symfony bundles

## Doctrine migrations hører til i app'en, dvs. ikke i et bundle

Et bundle kan definere entiteter, men det er app'ens opgave at sørge
for at databasen er som den skal være.

## `"require"` skal angive så højt versionnummer som muligt

`^2.8.19` foretrækkes frem for `^2.8`. Grunden til dette er at det så
(forhåbentlig) bliver nemmere for `composer` at beregne afhængigheder
mellem pakker
(jf. [http://www.naderman.de/slippy/src/?file=2012-06-07-Composers-SAT-Solver.html#1](http://www.naderman.de/slippy/src/?file=2012-06-07-Composers-SAT-Solver.html#1),
[https://github.com/composer/composer/issues/6685](https://github.com/composer/composer/issues/6685)).

## Tests
