# tray_corp_test
Backend developer test for Tray Corp.

Developed with Ruby 2.7 and RSpec 3.9

Run with Docker (19.03.6)

OBS: Enable docker without sudo before run the code: https://docs.docker.com/engine/install/linux-postinstall/

# Generate the image and Gemfile.lock

To install all dependencies and generate the image, execute the "setup" script: 

<code>$ ./setup</code>

# Run the tests

To run RSpec tests, execute the "test" script:

<code>$ ./test</code>


# Run problems

To run a problem (senior_test or vocals_test), execute the "run" script: 

<code>$ ./run problem_name "arguments"</code>

EX: ./run senior_test "[{ ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }]"