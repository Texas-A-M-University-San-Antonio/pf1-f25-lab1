# GitHub Classroom Autograding Configuration

## 🎯 Autograding Setup Instructions

### 1. **Autograde Method**: Select "GitHub Actions"

### 2. **Test Configuration** (Add these tests in order):

#### Test 1: Lab1 File Validation
```
Name: Lab1 File Check
Setup Command: echo "Checking for Lab1 file..."
Run Command: find . -maxdepth 1 -name "Lab1_*.java" | head -1 | xargs test -f
Timeout: 30
Points: 15
```

#### Test 2: Lab1 Compilation
```
Name: Lab1 Compilation
Setup Command: LAB1_FILE=$(find . -maxdepth 1 -name "Lab1_*.java" | head -1)
Run Command: if [ -n "$LAB1_FILE" ]; then javac "$LAB1_FILE"; else exit 1; fi
Timeout: 60
Points: 20
```

#### Test 3: Lab1 Execution
```
Name: Lab1 Execution
Setup Command: LAB1_FILE=$(find . -maxdepth 1 -name "Lab1_*.java" | head -1) && javac "$LAB1_FILE"
Run Command: CLASS_NAME=$(basename $(find . -name "Lab1_*.java" | head -1) .java) && timeout 10 java "$CLASS_NAME" | wc -l | awk '$1 > 0 {exit 0} {exit 1}'
Timeout: 60
Points: 20
```

#### Test 4: InClass1 File Validation
```
Name: InClass1 File Check
Setup Command: echo "Checking for InClass1 file..."
Run Command: find . -maxdepth 1 -name "InClass1_*.java" | head -1 | xargs test -f
Timeout: 30
Points: 15
```

#### Test 5: InClass1 Compilation
```
Name: InClass1 Compilation
Setup Command: INCLASS1_FILE=$(find . -maxdepth 1 -name "InClass1_*.java" | head -1)
Run Command: if [ -n "$INCLASS1_FILE" ]; then javac "$INCLASS1_FILE"; else exit 1; fi
Timeout: 60
Points: 15
```

#### Test 6: InClass1 Execution
```
Name: InClass1 Execution
Setup Command: INCLASS1_FILE=$(find . -maxdepth 1 -name "InClass1_*.java" | head -1) && javac "$INCLASS1_FILE"
Run Command: CLASS_NAME=$(basename $(find . -name "InClass1_*.java" | head -1) .java) && timeout 10 java "$CLASS_NAME" | wc -l | awk '$1 > 0 {exit 0} {exit 1}'
Timeout: 60
Points: 15
```

### 3. **Total Points**: 100

## 📝 Test Descriptions

- **File Check Tests (30 points)**: Verify students created the required files with correct naming convention
- **Compilation Tests (35 points)**: Ensure the Java code compiles without syntax errors  
- **Execution Tests (35 points)**: Verify the programs run and produce output

## 🎓 Grading Rubric

- **90-100%**: All files present, compile, and execute correctly
- **80-89%**: Minor issues with one assignment
- **70-79%**: One assignment missing or major compilation issues
- **60-69%**: Multiple compilation or execution failures
- **Below 60%**: Significant issues requiring resubmission

## 💡 Alternative: Single Comprehensive Test

If you prefer a single test that handles everything:

```
Name: Complete Assignment Check
Setup Command: chmod +x autograde.sh
Run Command: ./autograde.sh
Timeout: 180
Points: 100
```

This uses the `autograde.sh` script for comprehensive testing with detailed feedback.
