# Front-end - Gulp

## Information

__Metodeansvarlig__: Jesper Pedersen (pejes@aarhus.dk)

__Overordnet formål__: Retningslinjer for opsætning og brug af gulp.

__Afgrænsning af metode__:

## Generelt om gulp

Gulp bruges som preprocesser.

## Instalation og generel opsætning

Kopier gulpfile.js + package.json fra /starterkits/gulp og kør `npm install``
Rediger herefter gulpfile.js så stier og mappenavnen svare til dit projekt.

Alle requirements tilføjes øverst i filen.

Efterfølgende defineres variabler til brug i tasks.

Herefter defineres alle tasks.

## Tasks

Tasks er de opgaver som vi sætter gulp op til at køre på projekterne. Tasks kan
køres med: `gulp _taskname_`

### Scss - `sh gulp scss`

Scss er den task der sørger for at samle alle scss filer til en minified
produktions klar css fil.

Eksempel:

```js
gulp.task('sass', function () {
    return gulp.src('scss/*.scss')
        .pipe(plumber({ // More graceful error handling, prevents watch from breaking.
        errorHandler: onError
        }))
        .pipe(sass()) // Converts Sass to CSS with gulp-sass
        .pipe(gulp.dest('css/')) // Destination for css
        .pipe(gulpIf('*.css', cssnano())) // minifi the css file
        .pipe(bs.reload({stream: true}));
});

```

### Default - `gulp`

Kører en standard sekvens af opgaver defineferet for projektet. Som udgangspunkt
skal den indeholde alle de tasks der er nødvendige for at klagøre alle filer.
Således det ikke efterfølgende er nødvendigt at køre andre tasks.

Eksempel:

```js

gulp.task('default', function (callback) {
  runSequence(['server', 'fonts', 'watch'],
    callback
  )
});

```

### Watch - `gulp watch`

Starter en task der detektere ændringer af filer, og som kalder de nødvendige
tasks for at få bygget nye filer og få genindlæst browseren.

Eksempel:

```js

gulp.task('watch', ['browser-sync'], function () {
    gulp.watch("scss/**/*.scss", ['sass']);
    gulp.watch("views/**/*.ejs").on('change', bs.reload);
});

```

### Clean - `gulp clean`

Rydder op i mapper med byggede filer, før de nye genereres.

Eksempel:

```js

gulp.task('clean', function() {
  del.sync('css');
});

```

### Browser-sync - Kaldes af watch

[Browser-sync docs](https://browsersync.io/docs/gulp)

Sørger for at genindlæse browser efter ændringer.

Eksempel:

```js

gulp.task('browser-sync', ['sass'], function() {
    bs.init({
        proxy: "localhost:8080",
        ui: false
    });
});

```

### Server - `gulp server`

Opgave til at starte fx en express server, når der udvikles i fx et template
system, så det ikke er nødvendigt at køre den manuelt ved siden af.

Eksempel:

```js

gulp.task('server',function(){
    nodemon({
        'script': 'server.js',
        'ignore': '*.js'
    });
});

```

### Fonts - `gulp fonts`

Kopier fonte installeret via npm til `/fonts` mappen.

Eksempel:

```js

gulp.task('fonts', function() {
  return gulp.src('node_modules/font-awesome/fonts/**/*')
  .pipe(gulp.dest('fonts'))
})

```

## Ofte brugte 3.parts plugins

### scss

[gulp-scss docs](https://www.npmjs.com/package/gulp-sass)

Sørger for at lave scss om til css

### cssnano

[cssnano docs](http://cssnano.co/)

Sørger for at optimere den generede css

### plumber

[gulp-plumber docs](https://www.npmjs.com/package/gulp-plumber)

Undgå at watch stopper helt ved fejl. Sender i stedet fejlen til en funktion der
sørger for at logge fejlen i konsollen.

### runSequence

[run-sequence](https://www.npmjs.com/package/run-sequence)

Sikre at tasks starter i en bestemt rækkefølge.

### gutil

[gulp-util](https://www.npmjs.com/package/gulp-util)

Bruges til at logge fejl til konsollen