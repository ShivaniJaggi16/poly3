template ANDGate(inputs a, b, output o) {
  signal a_internal;
  signal b_internal;

  a_internal <== a;
  b_internal <== b;

  o <== a_internal * b_internal;
}

component Main =  ANDGate(A, B, O);

template Test() {
  signal testInputA;
  signal testInputB;
  signal testOutput;

  signal expectedOutput;

  testInputA <== 0;
  testInputB <== 1;
  expectedOutput <== 0;

  Main(A, testInputA, testInputB, testOutput);

  // Check if the actual output matches the expected output
  check testOutput == expectedOutput;
}

component TestCircuit = Test();
