module.exports = function(grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

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
                tasks: ['sass']
            }
        },

        autoprefixer: {
            options: {
                browsers: ['last 5 versions']
            },
            dist: { // Target
                files: {
                    'css/style.css': 'css/style.css'
                }
            },
        },

        cssmin: {
            combine: {
                files: {
                    'css/style.min.css': [
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
                    'js/project.min.js': [
                        'components/fastclick/lib/fastclick.js',
                        'components/jquery-form/jquery.form.js',

                        'js/init.js'
                    ]
                }
            }
        },

        css_sprite: {
            options: {
                'cssPath': '/static/images',
                'processor': 'scss',
                'orientation': 'vertical',
                'retina': true,
                'margin': 6
            },
            sprite: {
                options: {
                    'style': './scss/Base/_sprite.scss'
                },
                src: ['./images/sprites/*', '/static/images/sprites2/*'],
                dest: './images/sprite'
            }
        },

        imagemin: {
            png: {
                options: {
                    optimizationLevel: 8
                },
                files: [
                    {
                        // Set to true to enable the following options…
                        expand: true,
                        // cwd is 'current working directory'
                        cwd: 'images/',
                        src: ['**/*.png'],
                        // Could also match cwd line above. i.e. project-directory/img/
                        dest: 'images/compressed/',
                        ext: '.png'
                    }
                ]
            },
            jpg: {
                options: {
                    progressive: true
                },
                files: [
                    {
                        // Set to true to enable the following options…
                        expand: true,
                        // cwd is 'current working directory'
                        cwd: 'images/',
                        src: ['**/*.jpg'],
                        // Could also match cwd. i.e. project-directory/img/
                        dest: 'images/compressed/',
                        ext: '.jpg'
                    }
                ]
            }
        }
    });

    grunt.loadNpmTasks('grunt-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-imagemin');
    grunt.loadNpmTasks('grunt-autoprefixer');
    grunt.loadNpmTasks('css-sprite');

    grunt.registerTask('build', ['sass:dist', 'autoprefixer', 'cssmin', 'uglify', 'css_sprite']);
    grunt.registerTask('composer', ['build']);

    grunt.registerTask('image-min', ['imagemin']); // execute on both .png and .jpg
    grunt.registerTask('image-png', ['imagemin:png']); // only .png files
    grunt.registerTask('image-jpg', ['imagemin:jpg']); // only .jpg files

    grunt.registerTask('sprite', ['css_sprite']);

    grunt.registerTask('default', ['sass:dist', 'autoprefixer', 'watch']);

}