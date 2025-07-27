#!/bin/bash

#!/bin/bash

# Test runner script for InClass1.java (Variables Practice)
# This script compiles and runs the InClass1 test suite

echo "🔧 Compiling InClass1 files..."

# Compile the test file
javac InClass1Test.java
if [ $? -ne 0 ]; then
    echo "❌ Failed to compile InClass1Test.java"
    exit 1
fi

echo "✅ InClass1Test compilation successful!"
echo ""

# Run the tests
echo "🧪 Running InClass1 test suite..."
java InClass1Test

echo ""
echo "📋 Manual Verification Required:"
echo "   1. Check that student created InClass1_FirstName_LastName.java"
echo "   2. Verify String variable declaration (different name than Lab1)"
echo "   3. Verify String variable assignment with learning goal statement"
echo "   4. Verify println() statement displays the variable"
echo "   5. Test that the program compiles and runs correctly"

echo ""
echo "🧹 Cleaning up InClass1 class files..."
rm -f *.class
