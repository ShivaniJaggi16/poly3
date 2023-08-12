
pragma circom 2.0.0;

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    // Modify the OR logic to have the desired output
    out <== a + b;
}

template NOT() {
    signal input in;
    signal output out;

    // Modify the NOT logic to have the desired output
    out <== 1 - in;
}

template Multiplier2 () {   
  
    // Declaration of signals.   
    signal input a;   
    signal input b;   
    signal output c;   
  
    // Constraints.   
    c <== a * b;   
 } 
  
 component main = Multiplier2();
