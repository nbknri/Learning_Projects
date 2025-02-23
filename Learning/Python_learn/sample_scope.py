test = "hELLO"
def check_scope():
    def do_local():
        test="locall test"
    def do_non_lolcal():
        nonlocal test
        test= "non local test"
    def do_global():
        global test
        test= "global test"

    test = "deafult"
    do_local()
    print("do local: " + test)
    do_non_lolcal()
    print("do no local: " + test)
    do_global()
    print("global test: " + test)

check_scope()
print("test value afer main test: " + test)