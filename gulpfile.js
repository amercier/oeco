var gulp = require('gulp');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');

gulp.task('application.js', function() {
  gulp.src([
    //'bower_components/foundation/js/vendor/jquery.js',
    'bower_components/foundation/js/foundation.js',
    // 'bower_components/foundation/js/foundation/foundation.abide.js',
    // 'bower_components/foundation/js/foundation/foundation.accordion.js',
    // 'bower_components/foundation/js/foundation/foundation.alert.js',
    // 'bower_components/foundation/js/foundation/foundation.clearing.js',
    // 'bower_components/foundation/js/foundation/foundation.dropdown.js',
    // 'bower_components/foundation/js/foundation/foundation.equalizer.js',
    // 'bower_components/foundation/js/foundation/foundation.interchange.js',
    // 'bower_components/foundation/js/foundation/foundation.joyride.js',
    // 'bower_components/foundation/js/foundation/foundation.js',
    // 'bower_components/foundation/js/foundation/foundation.magellan.js',
    // 'bower_components/foundation/js/foundation/foundation.offcanvas.js',
    // 'bower_components/foundation/js/foundation/foundation.orbit.js',
    // 'bower_components/foundation/js/foundation/foundation.reveal.js',
    // 'bower_components/foundation/js/foundation/foundation.slider.js',
    // 'bower_components/foundation/js/foundation/foundation.tab.js',
    // 'bower_components/foundation/js/foundation/foundation.tooltip.js',
    // 'bower_components/foundation/js/foundation/foundation.topbar.js',
    // 'bower_components/foundation/js/vendor/fastclick.js',
    // 'bower_components/foundation/js/vendor/jquery.cookie.js',
    // 'bower_components/foundation/js/vendor/placeholder.js'
  ]).pipe(concat('application.js'))
    .pipe(uglify())
    .pipe(gulp.dest('app/assets/javascripts/'));
});


// var sass = require('gulp-sass');
// var rename = require('gulp-rename');
// var cssmin = require('gulp-cssmin');
// var clean = require('gulp-clean');

// uglify: {
//   base: {
//     files: {
//       'public/ss_foundation/libs/modernizr.min.js': [
//         'public/ss_foundation/libs/modernizr.js'
//       ],
//       // Custom foundation build

//       'public/ss_foundation/libs/foundation.min.js': [
//         'bower_components/foundation/js/foundation/foundation.js',
//         'bower_components/foundation/js/foundation/foundation.abide.js',
//         'bower_components/foundation/js/foundation/foundation.dropdown.js',
//         'bower_components/foundation/js/foundation/foundation.topbar.js',
//         'bower_components/foundation/js/foundation/foundation.magellan.js',
//         'bower_components/foundation/js/foundation/foundation.tab.js'
//       ]
//     }
//   }
// gulp.task('uglify-base', ['clean-js'], function() {

//   gulp.src([
//     'lib/foundation/js/foundation/foundation.js',
//     'lib/foundation/js/foundation/foundation.abide.js',
//     'lib/foundation/js/foundation/foundation.dropdown.js',
//     'lib/foundation/js/foundation/foundation.topbar.js',
//     'lib/foundation/js/foundation/foundation.magellan.js',
//     'lib/foundation/js/foundation/foundation.tab.js'
//   ]).pipe(concat('foundation.min.js'))
//     .pipe(uglify())
//     .pipe(gulp.dest('public/js/'));

//   gulp.src([
//     'lib/modernizr/modernizr.js'
//   ])
//     .pipe(concat('modernizr.min.js'))
//     .pipe(uglify())
//     .pipe(gulp.dest('public/js/'));

// });

// sass: {
//   dev: {
//     options: {
//       loadPath: ['lib/foundation/scss'],
//       style: 'compressed'
//     },
//     files: {
//       'public/css/app.css': 'scss/app.min.scss'
//     }
//   }
// }
// gulp.task('sass-dev', ['clean-css'], function() {
//   gulp.src([
//     'scss/app.scss',
//     'scss/typography.scss',
//     'scss/subdir/test.scss'
//   ]).pipe(sass({
//       includePaths: ['lib/foundation/scss']
//     }))
//     .pipe(cssmin())
//     .pipe(rename({ suffix: '.min' }))
//     .pipe(gulp.dest('public/css/'));
// });

// gulp.task('clean-css', function() {
//   return gulp.src('public/css', { read: false }).pipe(clean());
// });

// gulp.task('clean-js', function() {
//   return gulp.src('public/js', { read: false }).pipe(clean());
// });

// gulp.task('dev', ['uglify-base', 'sass-dev']);
