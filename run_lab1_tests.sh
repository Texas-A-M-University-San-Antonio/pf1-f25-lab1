#!/bin/bash

# Test runner script for Lab1.java (Variables and Print Statements)
# This script compiles and runs the Lab1 test suite

echo "🔧 Compiling Lab1 files..."

# Compile the test file
javac Lab1Test.java
if [ $? -ne 0 ]; then
    echo "❌ Failed to compile Lab1Test.java"
    exit 1
fi

echo "✅ Lab1Test compilation successful!"
echo ""

# Run the tests
echo "🧪 Running Lab1 test suite..."
java Lab1Test

echo ""
echo "📋 Manual Verification Required:"
echo "   1. Check that student created Lab1_FirstName_LastName.java"
echo "   2. Verify String variable declaration"
echo "   3. Verify String variable assignment with personal statement"
echo "   4. Verify println() statement displays the variable"
echo "   5. Test that the program compiles and runs correctly"

echo ""
echo "🧹 Cleaning up Lab1 class files..."
rm -f *.class
echo "✅ Lab1 testing complete!"
