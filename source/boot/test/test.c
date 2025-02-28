
void test(int a,int b,char c,long d,short x,char* y,int z){
    int k = a + b;
    return;
}

int main(void){
    test(1,2,3,4,5,(char*)6,7);
}