#include <bitset>
#include <cstring>
#include <set>
#include <iostream>
using namespace std;
const int maxl = 32;
int bit_size;
set<string> dic;
void gen(const bitset<maxl> &c, const bitset<maxl> &c0)
{
     dic.insert(c.to_string());
     for (int i=1; i<=bit_size; i++) {
          if (!c[i-1]) {
               bitset<maxl> temp = (c >> i) | c0;
               cout << "\t"
                    << c.to_string().substr(maxl - bit_size)
                    << " -> "
                    << temp.to_string().substr(maxl - bit_size)
                    << "[label=" << i << "];" <<endl;
               if (dic.count(temp.to_string()) == 0)
                    gen(temp, c0);
          }
     }
}

int main(int argc, char *argv[])
{
     if (argc == 2) {
          bit_size = strlen(argv[1]);
          cout << "digraph G {" << endl;
          gen(bitset<maxl>(string(argv[1])),
              bitset<maxl>(string(argv[1])));
          cout << "}" << endl;
     }
     else cout << "Wrong parameter number" << endl;
     return 0;
}
