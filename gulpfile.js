let gulp = require('gulp');
const sass = require('gulp-sass')(require('sass'));
let sourcemaps = require('gulp-sourcemaps');
let cssmin = require('gulp-cssmin');

function sassTask()
{
	return gulp.src('./scss/style.scss')
			.pipe(sourcemaps.init())
			.pipe(sass())
			.pipe(sourcemaps.write())
			.pipe(cssmin())
			.pipe(gulp.dest('./src/css'));
}

function watchTask()
{
	gulp.watch([
		'./scss/**',
	], gulp.series(sassTask));
}

exports.sass = sassTask;
exports.watch = watchTask;
exports.default = gulp.series(sassTask);