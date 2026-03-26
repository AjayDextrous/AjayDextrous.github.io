const { src, dest, watch, series } = require('gulp');
const sass = require('gulp-sass')(require('sass'));

const compileSass = () =>
    src(['./cv/scss/app.scss'])
        .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
        .pipe(dest('assets/css/'));

exports.watch = series(compileSass, () => watch('cv/scss/**/*', compileSass));
exports.default = compileSass;
