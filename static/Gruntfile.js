module.exports = function(grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        sass: {
            options: {
                includePaths: ['components/foundation/scss', 'components/atabix-mi8/scss']
            },
            dist: {
                options: {
                    outputStyle: 'expanded'
                },
                files: [{
                    'css/style.css': ['scss/style.scss']
                }, {
                    'css/mi.css': ['scss/mi.scss']
                }]
            }
        },
        watch: {
            grunt: {
                files: ['Gruntfile.js']
            },
            sass: {
                files: 'scss/**/*.scss',
                tasks: ['sass', 'autoprefixer'],
            },
            options: {
                // Start a live reload server on the default port 35729
                livereload: true
            }
        },
        autoprefixer: {
            options: {
                browsers: ['last 15 versions']
            },
            dist: { // Target
                files: {
                    'css/style.css': 'css/style.css',
                    'css/mi.css': 'css/mi.css'
                }
            },
        },
        cssmin: {
            combine: {
                files: [{
                    'css/style.min.css': ['css/style.css']
                }, {
                    'css/mi.min.css': ['css/mi.css']
                }]
            }
        },
        uglify: {
            my_target: {
                options: {
                    mangle: false
                },
                files: [{
                    'js/mi.min.js': ['components/atabix-mi8/js/globalSearch.js', 'components/atabix-mi8/js/init.js', 'components/fastclick/lib/fastclick.js', 'components/jquery-form/jquery.form.js', 'components/atabix-sweetalert/lib/sweet-alert.js', 'components/select2/select2.min.js', 'components/mousetrap/mousetrap.min.js', 'components/atabix-mi8/js/lib/jquery.nicescroll.min.js', 'components/atabix-mi8/js/lib/toggleSidepanel.js', 'components/atabix-mi8/js/lib/classie.js', 'components/atabix-mi8/js/lib/sidebarEffects.js', 'components/atabix-mi8/js/lib/modalEffects.js', 'components/atabix-mi8/js/fixedHeight.js', 'js/init-mi.js']
                }, {
                    'js/project.min.js': ['components/jquery-form/jquery.form.js', 'components/atabix-sweetalert/lib/sweet-alert.js', 'components/atabix-mi8/js/lib/jquery.nicescroll.min.js', 'components/atabix-mi8/js/lib/modalEffects.js', 'js/init.js']
                }]
            }
        }
    });
    grunt.loadNpmTasks('grunt-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-autoprefixer');
    grunt.registerTask('build', ['sass:dist', 'autoprefixer', 'cssmin', 'uglify']);
    grunt.registerTask('composer', ['build']);
    grunt.registerTask('default', ['sass:dist', 'autoprefixer', 'watch']);
}