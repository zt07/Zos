// Writes 'f' to the console.
//c compilation isnt working so for now im writing c code in a cpp file

extern "C" void main(){
    *(char*)0xb8000 = 'f';
   
    return;
}