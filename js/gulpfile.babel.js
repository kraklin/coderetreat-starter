import gulp from 'gulp';
import mocha from 'gulp-mocha';
import git from 'gulp-git'; 

require("babel-core/register");

gulp.task('reset', function(){
  git.reset('HEAD',{args:'--hard'}, function (err) {
    if (err) throw err;
  });
});

gulp.task('watch', () => {
	return gulp.watch(['src/**/*.js','test/**/*.js'], ['default']);
});

gulp.task('default', () => {
	return gulp.src('test/*.js')
	.pipe(mocha({ui: 'bdd', reporter: 'min'}));
});
