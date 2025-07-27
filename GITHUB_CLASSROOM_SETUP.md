# GitHub Classroom Setup Guide for Lab 1

## Overview
This repository contains a complete Lab 1 template for introduction to programming fundamentals using GitHub Classroom. This lab focuses on testing the GitHub Classroom environment, basic Java programming with variables, and print statements.

## Files Structure

```
.github/
├── classroom/
│   └── autograding.json          # Autograding test configuration (if used)
└── workflows/
    └── classroom.yml             # GitHub Actions workflow (if used)

# Main assignment files
Lab1_FirstName_LastName.java      # Student template for main lab
InClass1_FirstName_LastName.java  # Student template for in-class practice

# Test files
Lab1Test.java                     # Basic verification tests for Lab1
InClass1Test.java                 # Basic verification tests for InClass1
Lab1_Sample_Solution.java         # Working example for Lab1
InClass1_Sample_Solution.java     # Working example for InClass1

# Scripts
run_lab1_tests.sh                 # Test runner for Lab1
run_inclass1_tests.sh             # Test runner for InClass1
run_all_tests.sh                  # Runs all tests

# Documentation
README.md                         # Main instructions and guide
STUDENT_EXPERIENCE.md             # Student workflow documentation
TESTING_GUIDE.md                  # Testing procedures
TESTING_SUMMARY.md                # Testing overview
```

## Lab 1 Learning Objectives

### Primary Goals
- **Environment Testing**: Verify GitHub Classroom and codespace functionality
- **Basic Java Syntax**: Learn fundamental Java program structure
- **Variable Concepts**: Understand String variable declaration and assignment
- **Output Operations**: Master System.out.println() usage
- **Development Workflow**: Practice compile, run, and submission process

### Assignment Structure

#### **Lab1_FirstName_LastName.java**
- **Purpose**: Main lab assignment demonstrating variables and output
- **Requirements**: 
  - String variable declaration (30 points)
  - String assignment with personal programming statement (40 points)
  - Correct println() usage (30 points)

#### **InClass1_FirstName_LastName.java**
- **Purpose**: In-class practice with same concepts
- **Requirements**:
  - Different variable name than Lab1
  - Statement about learning goals
  - Proper println() implementation

## GitHub Classroom Setup Instructions

### For Instructors

#### Step 1: Create Assignment
1. Go to your GitHub Classroom organization
2. Click "New assignment"
3. Choose "Individual assignment"
4. Name it "Lab 1 - Variables and Print Statements"
5. Select this template repository

#### Step 2: Configure Assignment Settings
- **Deadline**: Set appropriate due date
- **Repository visibility**: Private (recommended for student privacy)
- **Grant students admin access**: No (recommended)
- **Feedback pull requests**: Enable for easy instructor feedback

#### Step 3: Autograding (Optional)
If using automated grading, configure tests for:
- Compilation verification
- Basic syntax checking
- File naming compliance
- Manual review flagging for content originality

#### Step 4: Distribute Assignment
- Share the assignment link with students
- Provide clear instructions about GitHub account requirements
- Ensure students understand codespace access process

### For Students (Quick Reference)

#### Step 1: Accept Assignment
1. Click the GitHub Classroom link provided by instructor
2. Select your name from the roster (if required)
3. Accept the assignment to create your repository
4. Wait for repository setup to complete

#### Step 2: Access Codespace
1. Navigate to your new repository on GitHub
2. Click the green "Code" button
3. Select "Codespaces" tab
4. Click "Create codespace on main"
5. Wait for the environment to initialize

#### Step 3: Complete Assignment
1. Read the README.md file thoroughly
2. Create Lab1_YourFirstName_YourLastName.java
3. Follow the step-by-step instructions
4. Test your program using the provided methods
5. Create InClass1_YourFirstName_YourLastName.java for practice

#### Step 4: Submit Work
1. Save all files
2. Commit changes using git commands or VS Code interface
3. Push to GitHub repository
4. Verify submission in repository web interface
5. Submit repository URL to course LMS if required

## Troubleshooting Common Issues

### Student Issues

#### Codespace Won't Start
- Check GitHub account permissions
- Verify repository access
- Try refreshing the page
- Contact instructor if issue persists

#### Compilation Errors
- Verify class name matches filename exactly
- Check for missing semicolons, quotes, or braces
- Ensure proper Java syntax in variable declarations
- Review sample solutions for reference

#### Can't Find Files
- Check file explorer in VS Code
- Ensure files are created in root directory
- Verify correct file naming convention
- Use README.md as a reference guide

### Instructor Issues

#### Students Can't Access Assignment
- Verify assignment link is correctly distributed
- Check if students have GitHub accounts
- Ensure classroom roster is properly configured
- Verify repository template permissions

#### Autograding Not Working
- Check autograding.json configuration
- Verify test files are included in template
- Test autograding with a sample submission
- Review GitHub Actions logs for errors

## Best Practices for Lab 1

### For Instructors
- **Clear Communication**: Provide detailed instructions about GitHub account setup
- **Early Testing**: Have students test their environment before the assignment deadline
- **Office Hours**: Schedule extra help sessions for students new to programming
- **Sample Demonstrations**: Show the complete workflow during class
- **Flexible Deadlines**: Consider extended deadlines for environment setup issues

### For Students
- **Start Early**: Begin the assignment well before the deadline
- **Read Thoroughly**: Complete the entire README.md before starting to code
- **Test Frequently**: Compile and run your program after each step
- **Ask Questions**: Don't hesitate to seek help during class or office hours
- **Save Often**: Regularly save and commit your work to prevent data loss

## Assessment Guidelines

### Grading Criteria
- **Technical Implementation** (70%): Correct syntax, compilation, execution
- **Content Quality** (20%): Meaningful personal statements, appropriate variable names
- **Process Compliance** (10%): Proper file naming, submission format, following instructions

### Common Feedback Areas
- File naming conventions
- Variable naming best practices
- Code formatting and readability
- Personal content originality
- Understanding of basic concepts

This Lab 1 template provides a foundation for students to learn programming fundamentals while getting comfortable with the development tools they'll use throughout the course.

### Step 1: Create Assignment Repository Template

1. **Upload all files** to your template repository:
   ```
   InClass3.java (student starter code)
   InClass3Test.java
   run_tests.sh
   .github/classroom/autograding.json
   .github/workflows/classroom.yml
   README.md
   TESTING_GUIDE.md
   ```

2. **Ensure file permissions** - The `run_tests.sh` should be executable

### Step 2: Configure GitHub Classroom Assignment

1. **Go to GitHub Classroom** (classroom.github.com)
2. **Create New Assignment**
3. **Select your template repository**
4. **Enable Autograding**:
   - ✅ Enable feedback pull requests
   - ✅ Enable autograding
   - ✅ Import from .github/classroom/autograding.json

### Step 3: Student Workflow

When students accept the assignment:

1. **Repository is created** from your template
2. **Student completes** the `InClass3.java` code
3. **Push to GitHub** triggers autograding
4. **Results are displayed** in GitHub Actions tab
5. **Points are calculated** automatically
6. **Feedback is provided** through GitHub interface

## Features

### ✅ **Automatic Grading**
- Runs on every push/pull request
- Provides immediate feedback
- Calculates total score automatically

### ✅ **Comprehensive Testing**
- 12 different test cases
- Cube calculation validation using Math.pow()
- Input/output format checking
- Edge case handling

### ✅ **Detailed Feedback**
- Individual test results
- Error messages for failed tests
- Step-by-step execution logs
- Summary report generation

### ✅ **Professional Setup**
- Uses GitHub Actions
- Follows education best practices
- Scalable for large classes
- Consistent grading criteria

## Student Instructions

### Assignment Requirements
Students need to complete the `InClass3.java` file to:

1. **Read user input** for cube side length
2. **Calculate volume** using Math.pow(side, 3)
3. **Calculate surface area** using 6 * Math.pow(side, 2)
4. **Display results** with proper formatting
5. **Handle all data types** (integers, decimals, zero values)

### Expected Output Format
```
Please enter the length of the side of the cube: [user input]
The volume of the cube is [calculated volume]
The surface area of the cube is [calculated surface area]
```

### Testing Locally
Students can test their code locally using:
```bash
# Compile and run program
javac InClass3.java
java InClass3

# Run comprehensive test suite
./run_tests.sh
```

## Instructor Benefits

### 🎯 **Immediate Assessment**
- No manual grading required
- Consistent evaluation criteria
- Instant feedback for students

### 📊 **Analytics**
- Track assignment completion
- Identify common issues
- Monitor student progress

### 🔧 **Easy Maintenance**
- Modify test cases as needed
- Update point distribution
- Add new requirements

## Troubleshooting

### Common Issues:

1. **Tests not running**: Check file permissions on `run_tests.sh`
2. **Compilation errors**: Verify Java syntax in template
3. **Wrong output format**: Check exact string matching in tests
4. **Timeout errors**: Increase timeout values in autograding.json

### Debug Steps:
1. Check GitHub Actions logs
2. Review autograding.json syntax
3. Test locally with provided scripts
4. Verify file paths and names

## Customization

### Adding New Tests:
1. **Edit autograding.json** - Add new test object
2. **Update point values** - Adjust scoring as needed
3. **Modify InClass3Test.java** - Add corresponding test method

### Changing Point Distribution:
- Edit the "points" field in each test
- Update documentation to match
- Total should equal desired maximum score

---

This autograding solution provides a complete, professional-grade assessment system for your cube calculator assignment, ensuring consistent grading while providing valuable learning feedback to students about Math.pow() usage and geometric calculations.
