#!/bin/bash
# Enhanced autograding script for GitHub Classroom
# This script provides automated testing for Lab1 assignments

echo "🤖 Starting Automated Grading for Lab 1"
echo "========================================"

TOTAL_POINTS=0
MAX_POINTS=100

# Test 1: Check if Lab1 file exists and compiles (25 points)
echo "📝 Test 1: Lab1 File Compilation (25 points)"
echo "----------------------------------------"

LAB1_FILE=$(find . -maxdepth 1 -name "Lab1_*.java" | head -1)
if [ -n "$LAB1_FILE" ]; then
    echo "✅ Found Lab1 file: $LAB1_FILE"
    if javac "$LAB1_FILE" 2>/dev/null; then
        echo "✅ Lab1 compilation successful"
        TOTAL_POINTS=$((TOTAL_POINTS + 25))
        echo "Points awarded: 25/25"
    else
        echo "❌ Lab1 compilation failed"
        echo "Points awarded: 0/25"
    fi
else
    echo "❌ No Lab1 file found (expected Lab1_FirstName_LastName.java)"
    echo "Points awarded: 0/25"
fi

# Test 2: Check if Lab1 runs and produces output (25 points)
echo ""
echo "🏃 Test 2: Lab1 Execution Test (25 points)"
echo "---------------------------------------"

if [ -n "$LAB1_FILE" ] && [ -f "${LAB1_FILE%.java}.class" ]; then
    CLASS_NAME=$(basename "$LAB1_FILE" .java)
    OUTPUT=$(timeout 10 java "$CLASS_NAME" 2>/dev/null)
    if [ $? -eq 0 ] && [ -n "$OUTPUT" ]; then
        echo "✅ Lab1 runs successfully and produces output"
        echo "Output preview: $(echo "$OUTPUT" | head -c 50)..."
        TOTAL_POINTS=$((TOTAL_POINTS + 25))
        echo "Points awarded: 25/25"
    else
        echo "❌ Lab1 failed to run or produced no output"
        echo "Points awarded: 0/25"
    fi
else
    echo "❌ Lab1 class file not found or compilation failed"
    echo "Points awarded: 0/25"
fi

# Test 3: Check if InClass1 file exists and compiles (25 points)
echo ""
echo "📝 Test 3: InClass1 File Compilation (25 points)"
echo "---------------------------------------------"

INCLASS1_FILE=$(find . -maxdepth 1 -name "InClass1_*.java" | head -1)
if [ -n "$INCLASS1_FILE" ]; then
    echo "✅ Found InClass1 file: $INCLASS1_FILE"
    if javac "$INCLASS1_FILE" 2>/dev/null; then
        echo "✅ InClass1 compilation successful"
        TOTAL_POINTS=$((TOTAL_POINTS + 25))
        echo "Points awarded: 25/25"
    else
        echo "❌ InClass1 compilation failed"
        echo "Points awarded: 0/25"
    fi
else
    echo "❌ No InClass1 file found (expected InClass1_FirstName_LastName.java)"
    echo "Points awarded: 0/25"
fi

# Test 4: Check if InClass1 runs and produces output (25 points)
echo ""
echo "🏃 Test 4: InClass1 Execution Test (25 points)"
echo "-------------------------------------------"

if [ -n "$INCLASS1_FILE" ] && [ -f "${INCLASS1_FILE%.java}.class" ]; then
    CLASS_NAME=$(basename "$INCLASS1_FILE" .java)
    OUTPUT=$(timeout 10 java "$CLASS_NAME" 2>/dev/null)
    if [ $? -eq 0 ] && [ -n "$OUTPUT" ]; then
        echo "✅ InClass1 runs successfully and produces output"
        echo "Output preview: $(echo "$OUTPUT" | head -c 50)..."
        TOTAL_POINTS=$((TOTAL_POINTS + 25))
        echo "Points awarded: 25/25"
    else
        echo "❌ InClass1 failed to run or produced no output"
        echo "Points awarded: 0/25"
    fi
else
    echo "❌ InClass1 class file not found or compilation failed"
    echo "Points awarded: 0/25"
fi

# Final Score Report
echo ""
echo "🎯 FINAL GRADE REPORT"
echo "===================="
echo "Total Points: $TOTAL_POINTS / $MAX_POINTS"
PERCENTAGE=$((TOTAL_POINTS * 100 / MAX_POINTS))
echo "Percentage: $PERCENTAGE%"

if [ $PERCENTAGE -ge 90 ]; then
    echo "Grade: A (Excellent work!)"
elif [ $PERCENTAGE -ge 80 ]; then
    echo "Grade: B (Good work!)"
elif [ $PERCENTAGE -ge 70 ]; then
    echo "Grade: C (Satisfactory)"
elif [ $PERCENTAGE -ge 60 ]; then
    echo "Grade: D (Needs improvement)"
else
    echo "Grade: F (Please review and resubmit)"
fi

echo ""
echo "📋 Manual Review Suggestions:"
echo "- Verify that string variables have meaningful names"
echo "- Check that personal statements are original and appropriate"
echo "- Ensure code follows proper Java formatting conventions"
echo "- Confirm that comments explain the code purpose"

# Clean up compiled files
rm -f *.class 2>/dev/null

exit 0
