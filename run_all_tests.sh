#!/bin/bash

# Comprehensive test runner for both InClass1 and Lab1
# This script runs both test suites sequentially

echo "🚀 Running Complete Lab 1 Test Suite"
echo "===================================="
echo ""

# Run InClass1 tests
echo "� PART 1: InClass1 (Variables Practice)"
echo "---------------------------------------"
./run_inclass1_tests.sh

echo ""
echo ""

# Run Lab1 tests
echo "📝 PART 2: Lab1 (Variables and Print Statements)"
echo "-----------------------------------------------"
./run_lab1_tests.sh

echo ""
echo "🎯 Complete Lab 1 Testing Finished!"
echo "===================================="
echo ""
echo "📋 Final Checklist:"
echo "   ✓ Both assignments should compile without errors"
echo "   ✓ Both assignments should run and display output"
echo "   ✓ Students should demonstrate understanding of:"
echo "     - String variable declaration"
echo "     - String variable assignment"  
echo "     - System.out.println() usage"
echo "     - Basic Java program structure"
