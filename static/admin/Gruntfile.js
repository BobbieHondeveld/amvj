module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    sass: {
      options: {
        includePaths: ['../components/foundation/scss']
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

    cssmin: {
      combine: {
        files: {
          'css/mi.min.css': [

            'components/foundation/css/foundation.css',

            '../../vendor/datatables/datatables/media/css/jquery.dataTables.min.css', 

            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/AutoFill/css/dataTables.autoFill.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/ColVis/css/dataTables.colVis.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/Editor-1.3.2/css/dataTables.editor.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/FixedColumns/css/dataTables.fixedColumns.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/FixedHeader/css/dataTables.fixedHeader.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/KeyTable/css/dataTables.keyTable.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/Responsive/css/dataTables.responsive.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/Scroller/css/dataTables.scroller.min.css',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/TableTools/css/dataTables.tableTools.min.css',

            'css/foundation-icons.css',
            'css/style.css'
          ]
        }
      }
    },

    uglify: {
      my_target: {
        options: {
          mangle: false

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

            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/AutoFill/js/dataTables.autoFill.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/ColVis/js/dataTables.colVis.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/Editor-1.3.2/js/dataTables.editor.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/FixedColumns/js/dataTables.fixedColumns.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/FixedHeader/js/dataTables.fixedHeader.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/KeyTable/js/dataTables.keyTable.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/Responsive/js/dataTables.responsive.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/Scroller/js/dataTables.scroller.min.js',
            '../../vendor/atabix/atabase-datatables/lib/datatables/extensions/TableTools/js/dataTables.tableTools.min.js',

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