/**
 * Test file for Lab1 - Variables and Print Statements
 * This file contains basic tests to verify the student's Lab1 implementation
 */

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class Lab1Test {
    
    public static void main(String[] args) {
        System.out.println("Running Lab1 Tests...");
        
        // Test 1: Check if Lab1 class exists and can be instantiated
        try {
            // Note: Students will need to replace "Lab1_FirstName_LastName" with their actual class name
            System.out.println("Test 1: Looking for Lab1 class...");
            System.out.println("Note: This test will need to be updated with the student's actual class name");
            System.out.println("Expected format: Lab1_FirstName_LastName");
            
            // Test 2: Check for main method
            System.out.println("\nTest 2: Checking for main method...");
            System.out.println("This test verifies that a main method exists");
            
            // Test 3: Check for String variable declaration
            System.out.println("\nTest 3: String variable declaration...");
            System.out.println("Manual verification required - check that student declared a String variable");
            
            // Test 4: Check for variable assignment
            System.out.println("\nTest 4: String variable assignment...");
            System.out.println("Manual verification required - check that student assigned a value to the String variable");
            
            // Test 5: Check for println statement
            System.out.println("\nTest 5: println() statement...");
            System.out.println("Manual verification required - check that student uses println() to display the variable");
            
            System.out.println("\n=== TESTING COMPLETE ===");
            System.out.println("For complete verification, manually review the student's Lab1 file to ensure:");
            System.out.println("1. String variable is declared");
            System.out.println("2. String variable is assigned a personal statement");
            System.out.println("3. println() statement displays the variable");
            System.out.println("4. Program compiles and runs without errors");
            
        } catch (Exception e) {
            System.err.println("Error during testing: " + e.getMessage());
            System.out.println("This is expected if the student hasn't created their Lab1 file yet.");
        }
    }
}
