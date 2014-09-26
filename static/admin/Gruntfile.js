
module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    sass: {
      options: {
        includePaths: ['components/foundation/scss']
      },
      dist: {
        options: {
          outputStyle: 'compressed'
        },
        files: {
          'css/style.css': 'scss/style.scss'
        }        
      }
    },

    cssmin: {
      combine: {
        files: {
          'css/mi.min.css': [

            'components/foundation/css/foundation.css',

            '../../vendor/datatables/datatables/media/css/jquery.dataTables.min.css', 
            'css/foundation-icons.css',
            'css/style.css'
          ]
        }
      }
    },

    uglify: {
      my_target: {
        options: {
        },
        files: {
          'js/mi.min.js': [
            'components/jquery/dist/jquery.min.js',
            
            'components/foundation/js/vendor/fastclick.js',            
            'components/foundation/js/vendor/jquery.cookie.js',            
            'components/foundation/js/vendor/jquery.js',            
            'components/foundation/js/vendor/modernizr.js',            
            'components/foundation/js/vendor/placeholder.js',            

            'components/foundation/js/foundation.min.js',

            'components/jquery-tokeninput/build/jquery.tokeninput.min.js',

            '../../vendor/datatables/datatables/media/js/jquery.dataTables.min.js',
            'js/cssmenu.js',
            'js/main.js'
          ]
        }
      }
    },

    watch: {
      grunt: { files: ['Gruntfile.js'] },

      sass: {
        files: 'scss/**/*.scss',
        tasks: ['sass']
      }
    }
  });

  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-uglify');

  grunt.registerTask('build', ['sass', 'cssmin', 'uglify']);
  grunt.registerTask('composer', ['build']);
  grunt.registerTask('default', ['build','watch']);
}