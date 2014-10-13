module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    autoprefixer: {
      options: {
          browsers: ['last 4 versions']
      },
      dist: { // Target
          files: {
              'css/style.css': 'css/style.css'
          }
      },
    },

    sass: {
      options: {
        includePaths: ['components/foundation/scss']
      },
      dist: {
        options: {
          outputStyle: 'expanded'
        },
        files: {
          'css/style.css': 'scss/style.scss'
        }
      }
    },

    watch: {
      grunt: { files: ['Gruntfile.js'] },
      sass: {
        files: 'scss/**/*.scss',
        tasks: ['sass', 'autoprefixer']
      }
    }

  });

  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-autoprefixer');

  grunt.registerTask('composer', ['build']);
  grunt.registerTask('build', ['sass']);
  grunt.registerTask('default', ['sass:dist', 'watch', 'autoprefixer']);
}