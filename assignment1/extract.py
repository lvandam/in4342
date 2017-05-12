testoutput = open('test_output', 'r')
testdata = open('testdata', 'w')


for i, l in enumerate(testoutput):
    myLine = None

    if l.startswith('Running with matrix size'):
        x = l.split(' ')
        testdata.write(x[4].rstrip() + ',')
    elif l.startswith('Total time ='):
        x = l.split(' ')
        testdata.write(x[3] + ',')
    elif l.startswith('DSP multiplication time = '):
        x = l.split(' ')
        testdata.write(x[4] + '\n')

testdata.close()
