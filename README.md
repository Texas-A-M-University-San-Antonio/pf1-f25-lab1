# pf1-lab1-template

## Welcome to Programming Fundamentals 1 - Lab 1

**Purpose:** The first lab assignment is an opportunity to test your GitHub Classroom environment, making sure you understand how to begin writing programs using a codespace. This will also be your first look at variables, which will be a fundamental part of all your programs.

**Learning Objectives:**
- Test your GitHub Classroom setup and codespace access
- Create your first Java program with basic print statements
- Learn about String variables and assignment
- Practice running Java programs
- Understand the submission process for labs

## Getting Started with GitHub Classroom

### Step 1: Accept the Assignment
- Click the GitHub Classroom assignment link provided by your instructor
- Accept the assignment to create your personal repository
- Wait for the repository setup to complete

### Step 2: Access Your Codespace
- Navigate to your newly created repository on GitHub
- Click the green "Code" button
- Select "Codespaces" tab
- Click "Create codespace on main" (or open existing codespace)
- Wait for the environment to load completely

### Step 3: Explore Your Workspace
- Familiarize yourself with the VS Code interface in your browser
- Notice the file explorer on the left side
- Locate the terminal at the bottom of the screen
- Find the README.md file (this file you're reading now)

## Understanding Variables

**In-Class 1:** Variables are used to hold values in your programs. This allows you to set the value once and use that value many times later. For example, a String variable is used to hold a sequence of characters (think of it like a string of words). Instead of rewriting that sequence of characters repeatedly, you only need to use the variable.

To make this String variable, you must declare it. This variable declaration looks like the following:

```java
String message;
```

This includes the String type, the name of the variable, and the terminating semi-colon. There are rules about variable names to learn later, but you can effectively name the variable whatever you like. To give this variable a value, you must assign that value to it. This variable assignment looks like the following:

```java
message = "Welcome to Java!";
```

The equals sign is known as the assignment operator. The variable is placed on the left-hand side, and the value is placed on the right-hand side. Also notice that you do not specify the String type. That type only ever needs to be stated when you declare the variable. Once this variable has a value, you can now use it. The simplest use-case for a String is to print it:

```java
System.out.println(message);
```

Variables are placed into statements in order to use them, such as the placement of the message variable in this print statement. You will learn more about the rules for placing variables into statements later. And again, remember that you do not specify the String type when using a variable.

## Lab Assignment Instructions

### Task Overview
Create a Java file named `Lab1_FirstName_LastName.java` (replace FirstName and LastName with your actual name).

**Example:** If your name is John Smith, create `Lab1_John_Smith.java`

### Step-by-Step Instructions for Lab1.java

#### Step 1: Create Your Java File
- In the file explorer, right-click in the main directory
- Select "New File"
- Name it `Lab1_YourFirstName_YourLastName.java`
- Open the file to begin editing

#### Step 2: Add File Header and Class Structure
- Add your name, date, and purpose in a comment header
- Create the basic class structure with a main method

#### Step 3: Declare a String Variable
- Inside the main method, declare a String variable
- Give it a meaningful name like `message`, `statement`, or `whyStatement`

#### Step 4: Assign a String Value
- Assign a String literal containing a sentence that briefly summarizes why you want to be a programmer
- **Important:** Do not use "Welcome to Java!" - create your own personal statement

#### Step 5: Display the Variable
- Write a `println()` statement to display your String variable to the console

### Sample Program Structure
```java
/**
 * Name: [Your Name]
 * Date: [Today's Date]
 * Purpose: Lab 1 - Introduction to Variables and GitHub Classroom
 */

public class Lab1_YourFirstName_YourLastName 
{
    public static void main(String[] args) 
    {
        // Declare a String variable
        
        // Assign your personal statement to the variable
        
        // Print the variable to the console
    }
}
```

## Running Your Program

### Method 1: Using the Terminal
1. Open the terminal in your codespace (Terminal → New Terminal)
2. Compile your program:
   ```bash
   javac Lab1_YourFirstName_YourLastName.java
   ```
3. Run your program:
   ```bash
   java Lab1_YourFirstName_YourLastName
   ```

### Method 2: Using VS Code's Run Button
1. Open your Java file
2. Look for the "Run" button that appears above your main method
3. Click it to compile and run your program automatically

## Testing Your Program

### What Should Happen
- Your program should compile without errors
- When run, it should display your personal statement about programming
- The output should appear in the terminal

### Troubleshooting Common Issues
- **Compilation Error:** Check that your class name matches your filename exactly
- **No Output:** Make sure you're using `System.out.println()` with your variable name
- **Syntax Error:** Check for missing semicolons, quotes, or braces

## InClass Assignment Instructions

### Task: Create InClass1.java
Following the same pattern as Lab1, create a file named `InClass1_FirstName_LastName.java` for practice during class time.

**Requirements:**
- Declare a String variable with a different name than your Lab1 variable
- Assign a statement about what you hope to learn in this programming course
- Display the variable using `System.out.println()`

## Submission Instructions

### Step 1: Save All Your Work
- Make sure both `Lab1_YourName.java` and `InClass1_YourName.java` are saved
- Verify both programs compile and run successfully

### Step 2: Commit Your Changes
1. In the terminal, run:
   ```bash
   git add .
   git commit -m "Complete Lab 1 - Variables and Print Statements"
   git push
   ```
2. Or use VS Code's Source Control panel:
   - Click the Source Control icon in the left sidebar
   - Type a commit message
   - Click "Commit" then "Sync Changes"

### Step 3: Verify Submission
- Go to your GitHub repository in a web browser
- Refresh the page and confirm your files are uploaded
- Check that your latest commit message appears

### Step 4: Submit to Learning Management System
- Copy the URL of your GitHub repository
- Submit the repository URL in your course's LMS assignment submission area
- Include any additional notes as required by your instructor

## Grading Criteria

**Lab1.java (100 points total):**
- String variable declaration (30 points)
- String assignment with personal statement (40 points)
- Correct `println()` statement displaying the variable (30 points)

**InClass1.java (Participation points):**
- Completed during class time
- Demonstrates understanding of the same concepts

**Additional Considerations:**
- Proper file naming convention
- Code compiles without errors
- Meaningful variable names
- Personal and original content (not copying examples)

## Getting Help

### During Class
- Raise your hand for immediate assistance
- Work with classmates to troubleshoot issues
- Ask questions about any step you don't understand

### Outside of Class
- Review this README.md file
- Check course discussion forums
- Email your instructor with specific questions
- Attend office hours for additional help

### Common Resources
- Java documentation for String class
- GitHub Classroom help documentation
- VS Code keyboard shortcuts and features

---

**Remember:** This is your first programming assignment! Take your time, ask questions, and don't worry if it takes a few tries to get everything working. The goal is to learn the process and get comfortable with the tools you'll be using throughout the course.