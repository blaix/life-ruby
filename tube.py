from subprocess import call

def specs(changed_file):
    return call(['rspec', 'specs.rb'])

PATTERNS = (
    (r'.*\.rb', [specs]),
)
