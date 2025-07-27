# Testing Guide for Lab 1 - Variables and Print Statements

## Overview
This guide provides comprehensive information about testing the Lab 1 assignment, which focuses on String variable declaration, assignment, and output using `System.out.println()`. This lab is designed for beginning programming students to learn fundamental concepts while testing their GitHub Classroom environment.

## Testing Approaches

### 1. Manual Verification (Primary Method)
Since Lab 1 focuses on basic concepts and personal expression, most testing is done through manual verification of student work.

#### What to Check:
- **File Creation**: Students created files with correct naming convention
- **Compilation**: Programs compile without syntax errors
- **Execution**: Programs run and display output
- **Content**: Students wrote original, personal statements
- **Structure**: Proper Java program structure is followed

### 2. Basic Automated Testing (Lab1Test.java)
A simple Java testing framework that provides basic verification without complex dependencies.

#### Features:
- **No external dependencies** - Uses only standard Java libraries
- **Basic verification** - Checks for file existence and compilation
- **Simple execution** - Can be run with standard Java commands
- **Educational feedback** - Provides learning-oriented messages

#### Test Areas Covered:
1. **File Naming Convention**: Verifies proper file naming
2. **Compilation Success**: Ensures code compiles without errors
3. **Basic Execution**: Confirms programs can run
4. **Manual Review Prompts**: Guides instructor verification

### 3. Running the Tests

#### Method 1: Using the Test Runner Scripts
```bash
# Test Lab1 specifically
./run_lab1_tests.sh

# Test InClass1 specifically  
./run_inclass1_tests.sh

# Test everything
./run_all_tests.sh
```

#### Method 2: Manual Compilation and Testing
```bash
# Compile and run Lab1Test
javac Lab1Test.java
java Lab1Test

# Compile and run InClass1Test
javac InClass1Test.java
java InClass1Test

# Clean up
rm *.class
```

#### Method 3: Individual Student Program Testing
To test a specific student's program:
```bash
# Replace with actual student filename
javac Lab1_John_Smith.java
java Lab1_John_Smith

# Check output for personal statement
```

## Verification Checklist

### For Lab1_FirstName_LastName.java

#### ✅ **File Structure and Naming**
- [ ] File named correctly: `Lab1_FirstName_LastName.java`
- [ ] Class name matches filename exactly
- [ ] File includes proper header comment with name, date, purpose
- [ ] Basic Java program structure is present

#### ✅ **String Variable Declaration (30 points)**
- [ ] String variable is declared with appropriate syntax
- [ ] Variable name is meaningful (e.g., message, statement, whyStatement)
- [ ] Proper Java identifier naming conventions followed
- [ ] Declaration includes String type and semicolon

#### ✅ **String Variable Assignment (40 points)**
- [ ] Variable is assigned a value using assignment operator (=)
- [ ] String literal is enclosed in double quotes
- [ ] Content is original and personal (not copied from examples)
- [ ] Statement expresses why student wants to be a programmer
- [ ] Assignment statement includes semicolon

#### ✅ **System.out.println() Usage (30 points)**
- [ ] println() statement is present and syntactically correct
- [ ] Statement uses the declared variable (not a literal string)
- [ ] Output displays the personal statement when program runs
- [ ] Proper method call syntax with parentheses and semicolon

### For InClass1_FirstName_LastName.java

#### ✅ **Practice Assignment Requirements**
- [ ] File named correctly: `InClass1_FirstName_LastName.java`
- [ ] Variable name is different from Lab1 variable
- [ ] Content focuses on learning goals rather than programming motivation
- [ ] Demonstrates same technical concepts as Lab1
- [ ] Shows understanding through repetition and variation

## Sample Testing Session

### Expected Student Files:
```
Lab1_John_Smith.java
InClass1_John_Smith.java
```

### Testing Process:

#### Step 1: Compilation Test
```bash
javac Lab1_John_Smith.java
# Expected: No error messages, Lab1_John_Smith.class file created

javac InClass1_John_Smith.java  
# Expected: No error messages, InClass1_John_Smith.class file created
```

#### Step 2: Execution Test
```bash
java Lab1_John_Smith
# Expected: Displays student's personal programming statement

java InClass1_John_Smith
# Expected: Displays student's learning goal statement
```

#### Step 3: Content Review
- Read the displayed statements
- Verify they are original and meaningful
- Check that they address the assignment requirements
- Ensure appropriate length and depth

## Common Issues and Solutions

### Compilation Errors

#### **Class Name Mismatch**
```
Error: class Lab1_John_Smith is public, should be declared in a file named Lab1_John_Smith.java
```
**Solution**: Ensure class name exactly matches filename

#### **Missing Semicolon**
```
Error: ';' expected
```
**Solution**: Check variable declarations and assignments for missing semicolons

#### **Unclosed String Literal**
```
Error: unclosed string literal
```
**Solution**: Ensure all string literals have matching opening and closing quotes

### Runtime Issues

#### **No Output**
**Problem**: Program compiles but produces no output
**Solution**: Check that println() statement is present and uses correct variable name

#### **Wrong Output**
**Problem**: Program displays literal text instead of variable content
**Solution**: Ensure println() uses variable name, not a string literal

### Content Issues

#### **Generic/Example Content**
**Problem**: Student used example text like "Welcome to Java!"
**Solution**: Require original, personal content that addresses assignment goals

#### **Inappropriate Content**
**Problem**: Statement doesn't address programming motivation or learning goals
**Solution**: Provide feedback and request revision with appropriate focus

## Grading Guidelines

### Technical Implementation (70%)
- **Compilation Success**: Program compiles without errors
- **Correct Syntax**: Proper Java syntax for variables and output
- **Program Structure**: Appropriate class and method structure
- **Code Execution**: Program runs and produces expected output

### Content Quality (20%)
- **Originality**: Student wrote original content, not copied examples
- **Relevance**: Content addresses assignment requirements appropriately
- **Depth**: Shows thoughtful consideration of programming/learning goals
- **Appropriateness**: Professional and suitable content for academic setting

### Process Compliance (10%)
- **File Naming**: Follows specified naming convention exactly
- **Submission Format**: Proper GitHub repository submission
- **Instructions Following**: Demonstrates reading and following directions
- **Timeliness**: Submitted within specified deadline

## Testing Automation Possibilities

### For Advanced Setups
While Lab 1 primarily uses manual verification, instructors can implement basic automation:

#### Basic Compilation Check
```java
// Simple script to verify compilation
import java.io.File;

public class CompilationChecker {
    public static void main(String[] args) {
        // Check if student files exist and compile
        // Report results for batch processing
    }
}
```

#### Output Verification
```bash
# Script to capture and verify program output
for file in Lab1_*.java; do
    name=${file%.java}
    if javac "$file" 2>/dev/null; then
        echo "✅ $file compiles successfully"
        output=$(java "$name" 2>/dev/null)
        if [ -n "$output" ]; then
            echo "✅ $file produces output: $output"
        else
            echo "❌ $file produces no output"
        fi
    else
        echo "❌ $file compilation failed"
    fi
done
```

This testing guide ensures that Lab 1 assignments are evaluated consistently while maintaining focus on the fundamental learning objectives appropriate for beginning programming students.
java inclass2
```
Then enter test values like:
- Mass: 10, Acceleration: 5 → Expected: 50.0 N
- Mass: 2.5, Acceleration: 4.2 → Expected: 10.5 N

## Test Coverage Analysis

### Physics Correctness
- ✅ Basic multiplication (F = m × a)
- ✅ Decimal precision handling
- ✅ Zero values (0 × n = 0, n × 0 = 0)
- ✅ Negative values (force direction)
- ✅ Large number handling

### Input/Output Testing
- ✅ Correct prompt messages
- ✅ Input reading functionality
- ✅ Output formatting
- ✅ Units display (N for Newtons)

### Edge Cases
- ✅ Zero mass
- ✅ Zero acceleration
- ✅ Negative acceleration
- ✅ Very small numbers
- ✅ Very large numbers

## Adding More Tests

To add additional test cases to `InClass2Test.java`:

1. Create a new test method following the pattern:
```java
private void testYourTestCase() {
    runTest("Your Test Case Name", () -> {
        String input = "mass_value\nacceleration_value\n";
        String output = runProgramWithInput(input);
        
        assertTrue(output.contains("expected_output"), 
                  "Error message if test fails");
    });
}
```

2. Add the method call to the `main` method:
```java
tester.testYourTestCase();
```

## Using JUnit (Optional Advanced Setup)

If you want to use JUnit for more advanced testing features:

1. **Download JUnit JAR files**:
   - junit-platform-console-standalone-1.9.3.jar (or latest version)

2. **Compile with JUnit**:
```bash
javac -cp junit-platform-console-standalone-1.9.3.jar:. *.java
```

3. **Run with JUnit**:
```bash
java -cp junit-platform-console-standalone-1.9.3.jar:. org.junit.platform.console.ConsoleLauncher --class-path . --scan-class-path
```

## Continuous Integration

For automated testing in CI/CD pipelines, you can create a simple GitHub Actions workflow:

```yaml
name: Java Tests
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Set up JDK 11
      uses: actions/setup-java@v2
      with:
        java-version: '11'
        distribution: 'adopt'
    - name: Run tests
      run: ./run_tests.sh
```

## Troubleshooting

### Common Issues:

1. **Compilation Error**: Make sure both `inclass2.java` and `InClass2Test.java` are in the same directory
2. **Class Not Found**: Ensure proper compilation order (main class first, then test class)
3. **Test Failures**: Check that the expected output format matches exactly what the program produces

### Expected Output Format:
The program should output exactly:
```
Please enter the mass of the object (kg): 
Please enter the acceleration of the object (m/s^2): 
The force applied to the object is [calculated_value] N.
```

## Best Practices

1. **Test Early and Often**: Run tests after each code change
2. **Cover Edge Cases**: Always test boundary conditions
3. **Verify Calculations**: Double-check physics calculations manually
4. **Check Output Format**: Ensure exact string matching for prompts
5. **Document Test Cases**: Explain what each test validates

## Performance Considerations

The current tests are lightweight and should run quickly. For larger test suites:
- Consider parallel test execution
- Add performance benchmarks
- Monitor memory usage during testing

---

*This testing framework provides a solid foundation for validating the inclass2.java program. The tests are designed to catch common programming errors while ensuring the physics calculations are correct.*
