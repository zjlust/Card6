from web3 import Web3
deployingAddr = '9fAbcEC297FdCEB28063BB144846d80bA4C5a771' # Challenge Contract
# Using contracts
code = '6080604052348015610010d69975ff864736f6c634300060c0033'
s = Web3.keccak(hexstr=code)
a =''.join(['%02x' % b for b in s])

for i in range(0x0019d54,0xffffffffffffffff):
    salt = hex(i)[2:].rjust(64,'0')
    p = Web3.keccak(hexstr=('0xff' + deployingAddr + salt + a))[12:].hex()
    print(i,p,'5a54' in p)
    if '5a54' in p:
        print(salt,p)
        break
