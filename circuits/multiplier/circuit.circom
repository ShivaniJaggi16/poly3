pragma circom 2.0.0; 


template ShivaniCircuit () { 
    //signal inputs
    signal input a;
    signal input b;

    //signals from gates
    signal X;
    signal Y;

    //final signal output
    signal output Q;

    //component gates used to create custom circuit
    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    //circuit logic
    andGate.a <== a;
    andGate.b <== b;
    X<== andGate.out;

    notGate.in <==b;
    Y <== notGate.out;

    orGate.a <== X;
    orGate.b <== Y;
    Q <== orGate.out;


   
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

component main = ShivaniCircuit();

  
   
