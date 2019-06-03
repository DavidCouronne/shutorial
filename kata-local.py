#! /usr/bin/python3

import json
import shutil, os, sys, stat, subprocess

if subprocess.call("jsonlint-py3 index.json", shell=True):
    print("Please fix your json sytax")
    os.exit(1)

with open('index.json') as data_file:
    main = json.load(data_file)

if os.path.isdir('/tmp/katalocal'):
    shutil.rmtree('/tmp/katalocal')
os.makedirs('/tmp/katalocal')

if not ('details' in main):
    print("Your index.json does not contain a 'details' section. I'm puzzled.")
    print(main)
    os.exit(1)
    
subprocess.call("echo '#! /bin/sh -x' > /tmp/katalocal/setup_assets", shell=True)
subprocess.call("echo 'cd /tmp/katacoda' >> /tmp/katalocal/setup_assets", shell=True)
            
if 'assets' in main['details']:
    for host in main['details']['assets']:
        for asset in main['details']['assets'][host]:
            assert 'file'   in asset, "{} does not have a 'file' component".format(asset)
            assert 'target' in asset, "{} does not have a 'target' component".format(asset)

            filename=asset['file']
            target=asset['target']
            shutil.copyfile("assets/{}".format(filename), '/tmp/katalocal/{}'.format(filename))
            subprocess.call("echo 'cp {} {}' >> /tmp/katalocal/setup_assets".format(filename,target), shell=True)
            if 'chmod' in asset:
                subprocess.call("echo 'chmod {} {}/{}' >> /tmp/katalocal/setup_assets".format(asset['chmod'], target, filename), shell=True)
os.chmod("/tmp/katalocal/setup_assets", stat.S_IRUSR|stat.S_IWUSR|stat.S_IXUSR) # user rwx

if 'steps' in main['details']:
    for step in main['details']['steps']:
        if 'verify' in step:
            # Check that we have all what we need
            if not os.path.exists(step['verify']):
                print("Step '{}': {} (verify script) not found. Please fix it.".format(step['title'], step['verify']))
                sys.exit(1)
            if not 'solution' in step:
                print("Step '{}': verify script but no solution script! Skipping.".format(step['title']))
                continue
            if not os.path.exists(step['solution']):
                print("Step '{}': {} (solution script) not found. Please fix it.".format(step['title'], step['solution']))
                sys.exit(1)
            print("Step {}: Prepare to check it (found both verify and solution scripts)".format(step['title']))
            
            # Install the scripts in position
            for key in 'verify', 'solution', 'courseData': 
                if key in step: # courseData is optional
                    dst_name = '/tmp/katalocal/{}'.format(step[key])
                    shutil.copyfile(step[key], dst_name)
                    os.chmod(dst_name, stat.S_IRUSR|stat.S_IWUSR|stat.S_IXUSR) # user rwx
            
            # TODO: install the assets
            
            setup="true"            
            if 'courseData' in step:
                setup="/tmp/katacoda/{}".format(step['courseData'])
            solution="/tmp/katacoda/{}".format(step['solution'])
            verify="/tmp/katacoda/{}".format(step['verify'])

            print("XXXXXXXX\nXXX Step '{}': check that the test really needs the solution\nXXXXXXXX".format(step['title']))
            cmd="docker run --rm --volume /tmp/katalocal/:/tmp/katacoda debian:testing sh -c 'cd && /tmp/katacoda/setup_assets && {} && {}' >/dev/null 2>/dev/null".format(setup, verify)
            print("Exec {}\n".format(cmd))            
            if subprocess.call(cmd, shell=True):
                print("XXXXXXXX\nXXX Step '{}': the verification on a blank docker fails as expected.".format(step['title']))
            else:
                print("XXXXXXXX\nXXX Step '{}': the verification passes on a blank docker while it should fail! Please fix it".format(step['title']))
                sys.exit(2)
                
            print("XXXXXXXX\nXXX Step '{}': check that the solution passes the test\nXXXXXXXX".format(step['title']))
            cmd="docker run --rm --volume /tmp/katalocal/:/tmp/katacoda debian:testing sh -x -c 'cd && /tmp/katacoda/setup_assets && {} && {} && {}'".format(setup, solution, verify)
            print("Exec {}\n".format(cmd))            
            if subprocess.call(cmd, shell=True):
                print("XXXXXXXX\nXXX Step '{}': Verification failed.".format(step['title']))
                sys.exit(2)
            print("\nXXXXXXXX\nStep '{}': passed.\nXXXXXXXX\n".format(step['title']))